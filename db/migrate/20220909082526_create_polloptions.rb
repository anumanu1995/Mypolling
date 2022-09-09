class CreatePolloptions < ActiveRecord::Migration[7.0]
  def change
    create_table :polloptions do |t|
      t.references :Pollcriterium, null: false, foreign_key: true
      t.string :poll_option , null:false

      t.timestamps
    end
  end
end
