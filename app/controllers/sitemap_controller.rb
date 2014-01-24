class SitemapController < ApplicationController
  def index
    static_urls = [ {:url => '/welcome/about',      :updated_at => ""},
                    {:url => '/welcome/index',       :updated_at => ""},
                    {:url => '/welcome/services', :updated_at => ""},
                    {:url => '/welcome/updates',      :updated_at => ""},
                    {:url => '/posts/index',  :updated_at => ""},
                    {:url => '/posts/show', :updated_at => ""},
                    {:url => '/contact/new', :updated_at => ""} ] 
    @pages_to_visit  = static_urls
    @pages_to_visit += Post.all.collect{  |p| {:url => post_path(p) ,  :updated_at => I18n.l(p.updated_at, :format => :w3c)} }
    respond_to do |format|
      format.xml
    end
  end
end