class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title, null:false
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end
