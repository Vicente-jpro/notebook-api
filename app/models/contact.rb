class Contact < ApplicationRecord
	
	belongs_to :kind
	has_many :phones

	def author
	  "Vicente Rúben Xavier Simão"
	end
	# def as_json(options={})
	#   super(
	#   	root: true,
	#   	methods: :author, 
	#   	include: {kind: { only: [:description]  }}
	#   	)
	# end

	def in_portuguese
	 {
	 	nome: self.name,
	 	email: self.email,
	 	data_nascimento: self.birthdate
	 } 
	end
end
