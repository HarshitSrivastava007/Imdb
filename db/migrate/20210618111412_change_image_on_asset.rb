class ChangeImageOnAsset < ActiveRecord::Migration[6.1]
  # def change
  #   change_column(:assets, :image, :string)
  # end

  def up
    change_column :assets, :image, :string
  end

  def down
    change_column :assets, :image, :binary
  end
end
