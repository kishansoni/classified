class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  acts_as_tree

  has_many :advertisements
end
