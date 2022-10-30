class AddBoardReferenceToColumns < ActiveRecord::Migration[7.0]
  def change
	add_reference :columns, :board, foreign_key: true	
  end
end
