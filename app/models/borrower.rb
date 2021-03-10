class Borrower < ApplicationRecord
    has_many :lends, dependent: :destroy
    has_many :items, through: :lends
end
