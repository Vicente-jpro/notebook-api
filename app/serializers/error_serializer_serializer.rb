module ErrorSerializer
  def self.serializer
    class ErrorSerializerSerializer 
      return if errors.nil?

      json = {}
      new_hash = errors.to_hash.map do |key, value|
        value.map do |msg|
          { id: key, title: msg }
        end
      end.flatten
      json[:erros] = new_hash
      return json 
    end
  end
end