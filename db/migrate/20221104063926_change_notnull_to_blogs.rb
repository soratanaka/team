class ChangeNotnullToBlogs < ActiveRecord::Migration[6.1]
  def change
    change_column_null :blogs, :user_id, true
  end
end
