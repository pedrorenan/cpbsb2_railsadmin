class CreateWorkshopUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :workshop_users do |t|
      t.references :workshop, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :kind

      t.timestamps
    end
  end
end
