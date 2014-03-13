require 'fileutils'

DRAFTS = "_drafts"
POSTS = "_posts"
DATE = Time.now.strftime("%Y-%m-%d")

task :default => :server

desc 'Build site with Jekyll'
task :build do
  jekyll 'build'
end

desc 'Build and start local server'
task :server do
  jekyll 'serve -w -D'
end

desc 'Build and deploy'
task :deploy => :build do
  sh 'rsync -rtzh --delete _site/ walkah.net:/var/www/walkah.net/'
end

# rake draft["Title"]
desc "Create a post in _drafts"
task :draft, :title do |t, args|
  title = args[:title]
  filename = "#{slugify(title)}.md"
  create_file(DRAFTS, filename, title)
end

# rake publish
desc "Move a post from _drafts to _posts"
task :publish, :file do |t, args|
  filename = args[:file].split("/").last
  draft = "#{DRAFTS}/#{filename}"
  puts "Publishing #{draft}"
  if File.exists?(draft)
    FileUtils.mv(draft, "#{POSTS}/#{DATE}-#{filename}")
    puts "#{filename} was moved to '#{POSTS}'."
  else
    puts "No draft found"
  end
end

def slugify (title)
  # strip characters and whitespace to create valid filenames, also lowercase
  return title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end

# Create a new file with YAML front matter
def create_file(directory, filename, title)
  if File.exists?("#{directory}/#{filename}")
    puts "The file already exists."
  else
    File.open("#{DRAFTS}/#{filename}", 'w') do |f|
      f.puts "---"
      f.puts "layout: post"
      f.puts "title: \"#{title}\""
      f.puts "tags: "
      f.puts "---"
    end
    puts "#{filename} was created in '#{directory}'."
  end
end

def jekyll(opts = '')
  sh 'rm -rf _site'
  sh 'jekyll ' + opts
end
