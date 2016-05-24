class CreateTabflowers < ActiveRecord::Migration
  def change
    create_table :tabflowers do |t|
      t.string :fName
      t.string :fHanyi
      t.float :fSPrice
      t.string :fImg
      t.string :fDetails
      t.string :fCailiao
      t.string :fBaoZ
      t.float :fPprice
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :tabflowers
  end

end
