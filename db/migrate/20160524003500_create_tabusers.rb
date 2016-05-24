class CreateTabusers < ActiveRecord::Migration
  def change
    create_table :tabusers do |t|
      t.string :uName
      t.string :uPass
      t.string :uTname
      t.string :uAddress
      t.string :uCode
      t.string :uPhone
      t.string :uEmail
      t.string :uAddressType
      t.timestamps null: false
    end
  end

  def self.down
    drop_table
  end
end
