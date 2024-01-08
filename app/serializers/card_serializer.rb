class CardSerializer
  include JSONAPI::Serializer
  attributes :name, :summary, :full_meaning, :image, :upright, :reversed
  
end