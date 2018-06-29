class CreateCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :certificates do |t|
      t.references :user, foreign_key: true
      t.integer :hours
      t.references :certificable, polymorphic: true

      t.timestamps
    end
  end
end
