class Item < ApplicationRecord
  belongs_to :user
  has_many :lends, dependent: :destroy
  has_many :borrowers, through: :lends
end
