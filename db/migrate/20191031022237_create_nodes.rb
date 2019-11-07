class CreateNodes < ActiveRecord::Migration[6.0]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :condition
      t.string :true_node
      t.string :false_node
      t.references :tree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
