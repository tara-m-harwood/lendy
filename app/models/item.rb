class Item < ApplicationRecord
  belongs_to :user
  has_many :lends
  has_many :borrowers, through: :lends
end
