class CreateDatasources < ActiveRecord::Migration
  def change
    create_table :datasources do |t|
      t.string :name
      t.string :location
      t.string :type
      t.boolean :status
      t.timestamps
    end
  end
end
