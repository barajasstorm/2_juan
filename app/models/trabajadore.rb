class Trabajadore < ActiveRecord::Base
	has_many :operacion
	before_save :beforesave, if: :isnull
	after_save :aftersave
	validates :name, presence: true

	def beforesave
		puts 'Se requiere poner un nombre'
		false
	end

	def aftersave
		puts 'Record guardado exitosamente'
	end

	def isnull
		true if name.nil?
	end
end
