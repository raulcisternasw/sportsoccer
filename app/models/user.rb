class User < ApplicationRecord
  validates :name, :email, :telephone, :cellphone, presence: true
end
