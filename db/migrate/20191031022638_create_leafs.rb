class CreateLeafs < ActiveRecord::Migration[6.0]
  def change
    create_table :leafs do |t|
      t.string :name
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
