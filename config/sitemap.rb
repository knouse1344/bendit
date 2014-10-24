# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.judybendit.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:

  add '/main/index', :changefreq => 'daily', :priority => 0.9

  add '/main/about'
  add '/main/brochures'
  add '/main/products'
  add '/main/articles'
  add '/main/handout'
  add '/main/upcoming'
  add '/main/course_offerings'
  add '/main/contact'

  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end