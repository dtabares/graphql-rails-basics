class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :published_at
      t.references :author

      t.timestamps
    end
  end
end
