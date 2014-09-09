class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.decimal :price, precision: 8 , scale: 2
      t.text :description
      t.string :manufacturer
      t.references :type, index: true

      t.timestamps
    end
  end
end
