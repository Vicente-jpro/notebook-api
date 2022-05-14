class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  def attributes(*args)
    date = super(*args)
    #date[:birthdate] = (I18n.l(object.birthdate) unless object.birthdate.blank? )
    date[:birthdate] = object.birthdate.to_time.iso8601 unless object.birthdate.blank? 
    date
  end
end
