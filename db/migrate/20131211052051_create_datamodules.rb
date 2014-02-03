class CreateDatamodules < ActiveRecord::Migration
  def change
    create_table :datamodules do |t|
      t.string :name
      t.string :description
      t.boolean :status
      t.integer :datamodel, :null => false
      t.timestamps
    end
  end
end
