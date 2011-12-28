class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :index
      t.text :text
      t.references :steplist

      t.timestamps
    end
    add_index :steps, :steplist_id
  end
end
