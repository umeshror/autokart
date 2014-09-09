class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.references :product, index: true

      t.timestamps
    end
  end
end
