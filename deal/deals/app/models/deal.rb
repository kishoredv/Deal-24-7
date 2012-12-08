class Deal < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  attr_accessible :address, :description, :latitude, :longitude, :name, :offers, :price, :image, :city, :state, :postal_code, :country
  acts_as_gmappable
  def gmaps4rails_address
  "#{latitude}, #{longitude}"
end
  validates :name, :presence => true
end
