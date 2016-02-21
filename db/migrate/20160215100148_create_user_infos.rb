class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :account
      t.string :password
      t.string :name
      t.string :email
      t.string :mobile

      t.timestamps null: false
    end
  end
end
