class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :cost, :decimal
      t.column :country, :string

      t.timestamps
    end
  end
end
