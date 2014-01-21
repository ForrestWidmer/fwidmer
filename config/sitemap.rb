# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.forrestwidmer.com"

SitemapGenerator::Sitemap.create do
  add '/welcome'
  add '/posts'
  add '/contact'

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
  #
  # Add '/articles'
  #
  add welcome_index_path, :priority => 0.7, :changefreq => 'weekly'
  add welcome_about_path, :priority => 0.7, :changefreq => 'weekly'
  add welcome_updates_path, :priority => 0.7, :changefreq => 'weekly'

  add posts_path, :priority => 0.7, :changefreq => 'weekly'

  add contact_new_path, :priority => 0.7, :changefreq => 'weekly'

  #
  # Add all articles:
  #
     Post.find_each do |post|
       add posts_path(post), :lastmod => post.updated_at
     end
end
