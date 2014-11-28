class Bid < ActiveRecord::Base
  belongs_to :auction

  #validates :price, numericality: { greater_than: auction.current }
end
