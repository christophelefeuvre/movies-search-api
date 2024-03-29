class JoinMoviePerson < ActiveRecord::Migration[6.0]
  def up
    return if table_exists? :movie_people

    create_table :movie_people, bulk: true do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.timestamps
    end
  end

  def down
    return unless table_exists? :movie_people

    drop_table :movie_people
  end
end