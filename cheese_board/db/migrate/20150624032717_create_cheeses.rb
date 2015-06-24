class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :variety
      t.belongs_to :User, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
