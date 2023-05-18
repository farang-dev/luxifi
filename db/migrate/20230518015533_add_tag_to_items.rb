class AddTagToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :tag, :string
  end
end
