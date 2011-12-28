class CreateSteplists < ActiveRecord::Migration
  def change
    create_table :steplists do |t|
      t.string :name
      t.string :description
      t.references :user

      t.timestamps
    end
    add_index :steplists, :user_id
  end
end
