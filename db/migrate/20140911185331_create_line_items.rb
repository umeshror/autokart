class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :item, index: true
      t.references :cart, index: true

      t.timestamps
    end
  end
end
