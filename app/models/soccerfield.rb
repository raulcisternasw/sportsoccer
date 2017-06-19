class Soccerfield < ApplicationRecord
  belongs_to :user
  validates :code, :state, :date, :time, :user_id, presence: true
  enum state: [ :'Sin reservar', :'Reservada' ]
end
