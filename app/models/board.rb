class Board < ApplicationRecord
  has_many :columns
  has_many :labels
end
