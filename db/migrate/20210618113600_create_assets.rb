class CreateAssets < ActiveRecord::Migration[6.1]
  def change
    create_table :assets do |t|
      t.references :entity, polymorphic: true, null: false

      t.timestamps
    end
  end
end
