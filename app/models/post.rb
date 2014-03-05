class Post < ActiveRecord::Base
  attr_accessible :body, :title
  default_scope order('created_at DESC')

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  #def should_generate_new_friendly_id?
   # new_record?
  #end
end
