class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :quantity
      t.belongs_to :library
      t.timestamps
    end
  end
end
