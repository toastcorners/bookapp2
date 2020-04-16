class CreateBooks < ActiveRecord::Migration[5.2]
def change
    create_table :books do |t|
        t.string :title
        t.float :price
        t.float :stars
        t.integer :author_id
        t.integer :category_id
        t.integer :num_of_reviews

    end
end


end