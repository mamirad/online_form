class CreatePersonExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :person_experiences do |t|
      t.string :experience_name
      t.references :person_info, foreign_key: true

      t.timestamps
    end
  end
end
