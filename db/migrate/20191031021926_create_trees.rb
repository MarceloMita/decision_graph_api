class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :title
      t.string :slug
      t.string :root

      t.timestamps
    end
    add_index :trees, :slug
  end
end
