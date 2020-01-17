class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content 
      t.integer :book_id

      t.timestamps
    end
  end
end
