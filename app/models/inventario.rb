class Inventario < ActiveRecord::
	has_one :item

	validates_presence_of :item
	validates_uniqueness_of :item
end
