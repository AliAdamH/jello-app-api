class Column < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :board
  after_create :update_board_col_order
  before_destroy :remove_self_from_board_col_order



  private

  def update_board_col_order
    board.col_order_ids << id
    board.save
  end
  
  def remove_self_from_board_col_order
    board.col_order_ids.delete id
    board.save
  end
end
