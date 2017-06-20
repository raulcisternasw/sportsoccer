class User < ApplicationRecord
  has_many :soccerfield
  validates :name, :email, :telephone, :cellphone, presence: true
  validates_uniqueness_of :email, message: 'Ya existe un cliente con ese correo electrónico, favor comprobar datos.'
end
