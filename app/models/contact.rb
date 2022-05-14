class Contact < ApplicationRecord
	
	belongs_to :kind
	has_many :phones
	has_one :address

	accepts_nested_attributes_for :phones, :address, allow_destroy: true

	validates_presence_of :phones, :kind


	def author
	  "Vicente Rúben Xavier Simão"
	end

	def as_json(options={})
	  super(
	  	root: true,
	  	methods: :author, 
	  	include: [ :kind, :phones, :address]
	  )
	end

	# def in_portuguese
	#  {
	#  	nome: self.name,
	#  	email: self.email,
	#  	data_nascimento: self.birthdate
	#  } 
	# end
end
