class CreatePosts < ActiveRecord::Migration

 
  def change
    create_table :posts do |t|
	  t.text :content
	  t.integer  "user.id"
	  t.integer  "first_name"
	  t.integer  "last_name"
      t.timestamps null: false
    end
  end
end
