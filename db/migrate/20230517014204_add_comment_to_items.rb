class AddCommentToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :items, :text
  end
end
