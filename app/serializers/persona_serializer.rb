class PersonaSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :nit, :phone
  has_one :area
end
