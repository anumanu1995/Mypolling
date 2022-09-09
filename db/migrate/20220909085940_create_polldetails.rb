class CreatePolldetails < ActiveRecord::Migration[7.0]
  def change
    create_table :polldetails do |t|
      t.references :Pollcriterium, null: false, foreign_key: true
      t.references :Candidate, null: false, foreign_key: true
      t.references :Polloption, null: false, foreign_key: true

      t.timestamps
    end
  end
end
