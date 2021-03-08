class Lend < ApplicationRecord
  belongs_to :item
  belongs_to :borrower
end
