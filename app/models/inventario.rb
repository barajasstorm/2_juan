class Inventario < ActiveRecord::
	has_one :item
	belongs_to :operacion

	validates_presence_of :item
	validates_uniqueness_of :item
end
