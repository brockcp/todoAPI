class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.references :list, index: true, foreign_key: true

      t.timestamps
    end
  end
end
