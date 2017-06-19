class CreateSoccerfields < ActiveRecord::Migration[5.1]
  def change
    create_table :soccerfields do |t|
      t.string :code
      t.integer :state
      t.date :date
      t.time :time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
