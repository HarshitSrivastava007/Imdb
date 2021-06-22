class AddCountryToCrew < ActiveRecord::Migration[6.1]
  def change
    add_column :crews, :country, :string
  end
end
