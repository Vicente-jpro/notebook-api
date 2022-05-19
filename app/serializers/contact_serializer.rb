class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate #:virtual_attribute


  belongs_to :kind do 
    link(:related) { contact_kind_url(object.id) }
  end

  has_many :phones do 
     link(:related) { contact_phones_url(object.id) }
  end

  has_one :address do 
    link(:related) { contact_address_url(object.id)}
  end
  
  # def virtual_attribute
  #   "I'm a virtual attribute."
  # end

  #Extra attributes
  meta do 
   {about: "Description about this api."}
  end

  def attributes(*args)
    date = super(*args)
    #date[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank? )
    date[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank? 
    date
  end


  link(:self){ contact_url(object.id) }

end
