class RemoveColumn5 < ActiveRecord::Migration[6.0]
  def change
    remove_column :tags, :post_id
  end
end
