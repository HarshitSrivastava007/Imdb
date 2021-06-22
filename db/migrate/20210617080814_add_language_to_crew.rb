class AddLanguageToCrew < ActiveRecord::Migration[6.1]
  def change
    add_column :crews, :language, :string
  end
end
