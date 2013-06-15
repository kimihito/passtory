class Post < ActiveRecord::Base
  attr_accessible :body, :name, :display_name, :url, :icon, :score
  default_scope{order 'created_at DESC'}
  def self.ranking days=nil
    if days
      unscoped.where('created_at > ?', days.days.ago).order('score DESC')
    else
      unscoped.order('score DESC')
    end
  end
end
