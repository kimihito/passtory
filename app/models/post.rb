class Post < ActiveRecord::Base
  attr_accessible :name, :body, :score
end
