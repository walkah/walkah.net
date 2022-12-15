module Jekyll
  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      process(@name)
      read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Posts Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
    end
  end

  class TagFeed < Page
    def initialize(site, base, tag_dir, tag)
      @site = site
      @base = base
      @dir  = tag_dir
      @name = 'atom.xml'
      process(@name)
      # Read the YAML data from the layout page.
      read_yaml(File.join(base, '_layouts'), 'tag_feed.xml')
      data['tag'] = tag
      # Set the title for this page.
      tag_title_prefix = site.config['tag_title_prefix'] || 'Posts Tagged &ldquo;'
      tag_title_suffix = site.config['tag_title_suffix'] || '&rdquo;'
      data['title'] = "#{tag_title_prefix}#{tag}#{tag_title_suffix}"
      # Set the meta-description for this page.

      # Set the correct feed URL.
      data['feed_url'] = "#{tag_dir}/#{name}"
    end
  end

  class TagGenerator < Generator
    safe true
    def generate(site)
      return unless site.layouts.key? 'tag_index'

      dir = site.config['tag_dir'] || 'tag'
      site.tags.keys.each do |tag|
        dest_dir = File.join(dir, tag.tr(' ', '-'))
        write_tag_index(site, dest_dir, tag)
        write_tag_feed(site, dest_dir, tag)
      end
    end

    def write_tag_index(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end

    def write_tag_feed(site, dir, tag)
      feed = TagFeed.new(site, site.source, dir, tag)
      feed.render(site.layouts, site.site_payload)
      feed.write(site.dest)
      site.pages << feed
    end
  end

  # Adds some extra filters used during the category creation process.
  module TagFilter
    # Outputs a list of categories as comma-separated <a> links. This is used
    # to output the category list for each post on a category page.
    #
    #  +categories+ is the list of categories to format.
    #
    # Returns string
    #
    def tag_links(tags)
      tags = tags.sort!.map do |item|
        page_url = @context.registers[:page]['url']

        item.tr!(' ', '-')
        tag_path = "/tag/#{item}"
        "<a class='p-category' href='#{Pathname(tag_path).relative_path_from(Pathname(page_url))}'>#{item}</a>"
      end
      tags.join(', ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilter)
