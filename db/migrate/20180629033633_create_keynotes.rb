class CreateKeynotes < ActiveRecord::Migration[5.1]
  def change
    create_table :keynotes do |t|
      t.string :name
      t.text :description
      t.string :stage

      t.timestamps
    end
  end
end
