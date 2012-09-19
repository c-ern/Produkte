class Supermarket < ActiveRecord::Base
  attr_accessible :name, :wikipedia_url

  has_many :supplies
  has_many :origins, :through => :supplies
end
