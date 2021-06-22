class AddBirthdayToCrew < ActiveRecord::Migration[6.1]
  def change
    add_column :crews, :birthday, :date
  end
end
