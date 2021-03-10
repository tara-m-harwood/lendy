class User < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :lends, through: :items

    def self.play(username)
        user_obj = all.find_by(username: username)
        user_obj.lends = user_obj.lends.reverse
        user_obj
    end    


end
