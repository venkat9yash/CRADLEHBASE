class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :description
      t.integer :module
      t.integer :datamodel, :null => false
      t.timestamps
    end
  end
end
