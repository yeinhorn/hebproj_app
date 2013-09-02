class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string  :name
      t.integer :class_num
      t.integer :sub_class_num
      t.integer :lesson_num
      t.string  :note

      t.timestamps
    end
  end
end
