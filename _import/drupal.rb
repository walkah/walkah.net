require 'rubygems'
require 'sequel'
require 'fileutils'
require 'yaml'

# NOTE: This converter requires Sequel and the MySQL gems.
# The MySQL gem can be difficult to install on OS X. Once you have MySQL
# installed, running the following commands should work:
# $ sudo gem install sequel
# $ sudo gem install mysql -- --with-mysql-config=/usr/local/mysql/bin/mysql_config

#
# I run this as follows: 
# ruby -r './_import/drupal' -e 'Jekyll::Drupal.process("#{ENV["DB"]}", "#{ENV["DB_USER"]}", "#{ENV["DB_PASS"]}", "#{ENV["DB_HOST"]}")'
#
module Jekyll
  module Drupal
    # Reads a MySQL database via Sequel and creates a post file for each post
    # in wp_posts that has post_status = 'publish'. This restriction is made
    # because 'draft' posts are not guaranteed to have valid dates.
    QUERY = "SELECT n.nid, \
                    n.title, \
                    n.created, \
                    n.status, \
                    b.body_value, \
                    a.alias
             FROM node n, \
                  field_data_body b, \
                  url_alias a \
             WHERE n.type = 'blog' \
             AND b.entity_type = 'node' AND b.bundle='blog' AND b.entity_id = n.nid \
             AND a.source = concat('node/', n.nid)"

    def self.process(dbname, user, pass, host = 'localhost')
      db = Sequel.mysql(dbname, :user => user, :password => pass, :host => host, :encoding => 'utf8')

      FileUtils.mkdir_p "_posts"
      FileUtils.mkdir_p "_drafts"

      db[QUERY].each do |post|
        # Get required fields and construct Jekyll compatible name
        node_id = post[:nid]
        title = post[:title]
        content = post[:body_value]
        created = post[:created]
        time = Time.at(created)
        permalink = post[:alias]
        is_published = post[:status] == 1
        dir = is_published ? "_posts" : "_drafts"
        slug = title.strip.downcase.gsub(/(&|&amp;)/, ' and ').gsub(/[\s\.\/\\]/, '-').gsub(/[^\w-]/, '').gsub(/[-_]{2,}/, '-').gsub(/^[-_]/, '').gsub(/[-_]$/, '')
        name = time.strftime("%Y-%m-%d-") + slug + '.md'

        tag_query = "SELECT td.name \
                     FROM field_data_taxonomy_vocabulary_1 f INNER JOIN taxonomy_term_data td \
                          ON (f.taxonomy_vocabulary_1_tid = td.tid) \
                     WHERE f.entity_id = #{node_id}"
        tags = []
        db[tag_query].each do |tag|
          tags.push tag[:name]
        end


        # Get the relevant fields as a hash, delete empty fields and convert
        # to YAML for the header
        data = {
           'layout' => 'post',
           'title' => title.to_s,
           'created' => created,
           'permalink' => permalink,
           'tags' => tags
         }.delete_if { |k,v| v.nil? || v == ''}.to_yaml

        # Write out the data and content to file
        File.open("#{dir}/#{name}", "w") do |f|
          f.puts data
          f.puts "---"
          f.puts content
        end
      end
    end
  end
end
