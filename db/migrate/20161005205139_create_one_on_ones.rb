class CreateOneOnOnes < ActiveRecord::Migration
  def change
    create_table :one_on_ones do |t|
      t.string :student
      t.string :teacher
      t.string :topic
      t.string :date
      t.text :description

      t.timestamps
    end
  end
end
