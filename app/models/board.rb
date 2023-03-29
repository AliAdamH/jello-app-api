class Board < ApplicationRecord
  has_many :columns
  has_many :labels

  has_many :tasks, through: :columns
end
