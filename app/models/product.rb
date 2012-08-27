class Product < ActiveRecord::Base
  attr_accessible :name, :price
  paginates_per 15
end
