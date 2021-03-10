class Lend < ApplicationRecord
  belongs_to :item
  belongs_to :borrower

  def self.test
    all.map{ |lend| lend[:start_date] }
  end

end
