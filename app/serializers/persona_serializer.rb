class PersonaSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :nit, :phone, :area_id
  has_one :area
end
