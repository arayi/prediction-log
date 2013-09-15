class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.string :user
      t.text :prediction
      t.string :pdate
      t.string :time

      t.timestamps
    end
  end
end
