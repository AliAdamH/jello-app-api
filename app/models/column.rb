class Column < ApplicationRecord
  has_many :tasks
  belongs_to :board
end
