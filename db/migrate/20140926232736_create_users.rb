class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :bsc_number, unique: true
      t.string :msc_number, unique: true
      t.string :phd_number, unique: true
      t.string :email, unique: true
      t.string :identity_card
      t.string :phone
      t.string :address
      t.date :birth_date
      t.integer :membership, unique: true
      t.boolean :paid

      t.references :responsible, index: true

      t.timestamps
    end
  end
end
