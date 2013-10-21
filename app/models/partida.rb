class Partida < ActiveRecord::Base
  belongs_to :parteobra
  validates_presence_of :lista_id, :message => ":Escriba el list_id"
end
