class CreatePollcriteria < ActiveRecord::Migration[7.0]
  def change
    create_table :pollcriteria do |t|
      t.string :poll_question ,  null:false

      t.timestamps
    end
  end
end
