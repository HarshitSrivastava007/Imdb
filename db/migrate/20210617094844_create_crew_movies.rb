class CreateCrewMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :crew_movies do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :crew, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
