class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :couverture
      t.string :titre
      t.string :description
      t.references :category
      t.timestamps null: false
    end
  end
end
