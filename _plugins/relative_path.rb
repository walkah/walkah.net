module Jekyll
  module RelativePath
    def relative_path(url)
      page_url = @context.registers[:page]['url']
      Pathname(url).relative_path_from(Pathname(page_url)).to_s
    end
  end
end

Liquid::Template.register_filter(Jekyll::RelativePath)
