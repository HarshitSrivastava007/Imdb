class AddHeightToCrew < ActiveRecord::Migration[6.1]
  def change
    add_column :crews, :height, :integer
  end
end
