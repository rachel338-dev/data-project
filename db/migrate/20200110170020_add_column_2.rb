class AddColumn2 < ActiveRecord::Migration[6.0]
  def change
    add_column :tags, :post_id, :integer
  end
end
