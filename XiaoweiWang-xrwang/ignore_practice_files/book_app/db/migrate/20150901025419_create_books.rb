#you want to store instances of classes somwhere
#this comes out of the box and it creates a migration to a database
#rake task is basically make
#this is how you create a table called books
class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year_published
      t.string :genre
      t.boolean :available

      t.timestamps null: false
    end
  end
end
