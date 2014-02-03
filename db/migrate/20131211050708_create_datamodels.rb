class CreateDatamodels < ActiveRecord::Migration
  def change
    create_table :datamodels do |t|
      t.string :name
      t.integer :modules
      t.string :description
      t.boolean :status
      t.integer :datasource, :null => false
      t.timestamps 
    end
  end
end
