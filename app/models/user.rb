class User < ApplicationRecord
    has_many :items
    has_many :lends, through: :items
end
