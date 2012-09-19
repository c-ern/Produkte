class Supply < ActiveRecord::Base
  attr_accessible :origin_id, :supermarket_id

  belongs_to :origin
  belongs_to :supermarket
end
