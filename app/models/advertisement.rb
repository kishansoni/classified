class Advertisement < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  attr_accessible :advertisement_status_id, :deleted, :paid, :values_xml, :user_id, :category_id, :title, :price
  attr_accessible :image

  #attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at

  has_attached_file :image, :style => { :medium => "300*300>", :thumb => "100*100>" }, :default_url => "/images/:style/missing.png"

  validates :values_xml, :presence => true
  validates :title, :presence => true
  validates :price, :presence => true
end
