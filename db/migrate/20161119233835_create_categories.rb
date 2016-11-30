class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :titre
      t.string :description
      t.timestamps null: false
    end
  end
end
