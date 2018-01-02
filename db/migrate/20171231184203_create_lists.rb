class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :list_name
      t.boolean :private
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
