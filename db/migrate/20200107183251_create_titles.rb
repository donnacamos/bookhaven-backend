class CreateTitles < ActiveRecord::Migration[6.0]
  def change
    create_table :titles do |t|
      t.string :name
      t.integer :author_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
