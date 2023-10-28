class AddCardIndexToCard < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :card_index, :string
  end
end