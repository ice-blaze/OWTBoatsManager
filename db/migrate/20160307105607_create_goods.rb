class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.references :boat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
