class Product < ActiveRecord::Base
  attr_accessible :name, :wikipedia_url

  has_many :origins
end
