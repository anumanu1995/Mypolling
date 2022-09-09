class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :candidate_fname , null: false
      t.string :candidate_lname ,null: false
      t.integer :candidate_age, null: false
      t.text   :candidate_address, null: false

      t.timestamps
    end
  end
end
