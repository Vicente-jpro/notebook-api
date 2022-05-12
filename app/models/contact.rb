class Contact < ApplicationRecord
	
	belongs_to :kind
	has_many :phones
	
	validates_presence_of :phones, :kind

	accepts_nested_attributes_for :phones, allow_destroy: true

	def author
	  "Vicente Rúben Xavier Simão"
	end

	def as_json(options={})
	  super(
	  	root: true,
	  	methods: :author, 
	  	include: {
	  		kind: { only: [:description] },
	  		phones: { only: [:number] }

	  	  }	
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
