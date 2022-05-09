class Contact < ApplicationRecord
	def author
	  "Vicente Rúben Xavier Simão"
	end
	def as_json(options={})
	  super(methods: :author, root: true)
	end
end
