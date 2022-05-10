class Contact < ApplicationRecord
	belongs_to :kind
	def author
	  "Vicente Rúben Xavier Simão"
	end
	def as_json(options={})
	  super(
	  	root: true,
	  	methods: :author, 
	  	include: {kind: { only: [:description]  }}
	  	)
	end
end
