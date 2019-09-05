class CreatePersonInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :person_infos do |t|
      t.string :name
      t.string :cnic
      t.integer :age
      t.integer :age
      t.string :gender
      t.string :address
      t.string :mobile
      t.string :apply_for
      t.string :area
      t.string :detail_area_research
      t.string :cv_upload

      t.timestamps
    end
  end
end
