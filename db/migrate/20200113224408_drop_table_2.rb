class DropTable2 < ActiveRecord::Migration[6.0]
  def change
    drop_table :posts_tags
  end
end
