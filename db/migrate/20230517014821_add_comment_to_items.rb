class AddCommentToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :comment, :text
  end
end
