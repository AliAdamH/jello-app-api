class Column < ApplicationRecord
  has_many :tasks
  belongs_to :board
  after_create :update_board_col_order



  private

  def update_board_col_order
    board.col_order_ids << id
    board.save
  end
end
