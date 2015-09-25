class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :body
      t.string :reviewer_name
      t.references :reviewable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
