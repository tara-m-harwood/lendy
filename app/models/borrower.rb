class Borrower < ApplicationRecord
    has_many :lends
    has_many :items, through: :lends
end
