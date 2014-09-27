class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :student_number
      t.references :course, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
