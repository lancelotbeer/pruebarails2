class CreateToBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :to_buys do |t|
      t.references :user, foreign_key: true
      t.references :work, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
