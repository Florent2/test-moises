class Parteobra < ActiveRecord::Base
  has_many :partidas
  accepts_nested_attributes_for :partidas
end
