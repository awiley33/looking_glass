class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :summary
      t.string :full_meaning
      t.string :image
      t.string :upright
      t.string :reversed

      t.timestamps
    end
  end
end
