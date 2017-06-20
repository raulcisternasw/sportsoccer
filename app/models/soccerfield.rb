class Soccerfield < ApplicationRecord
  belongs_to :user
  validates :code, :state, :date, :time, :user_id, presence: true
  validates_uniqueness_of :code, scope: [:state, :date, :time], message: 'Cancha ocupada en este horario, favor seleccione otro horario.'

  enum state: [ :sin_reservar, :reservada ]
end
