class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course1
      t.string :course2
      t.string :course3

      t.timestamps
    end
  end
end
