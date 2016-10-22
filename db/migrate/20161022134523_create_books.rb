class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :length
      t.string :author
      t.string :style

      t.timestamps null: false
    end
  end
end
