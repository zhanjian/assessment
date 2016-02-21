class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.bigint :user_exam_id
      t.integer :exam_method

      t.timestamps null: false
    end
  end
end
