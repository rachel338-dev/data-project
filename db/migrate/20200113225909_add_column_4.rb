class AddColumn4 < ActiveRecord::Migration[6.0]
  def change
    add_column :post_tags, :post_id, :bigint
    add_column :post_tags, :tag_id, :bigint
  end
end
