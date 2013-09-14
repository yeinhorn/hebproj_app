class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :hebrew
      t.string :ivrit
      t.string :english
      t.string :french
      t.string :spanish
      t.string :russian
      t.string :portugese
      t.string :dutch
      t.string :german

      t.boolean :verb
      t.string  :shoresh
      t.string  :shoresh_type  
      t.boolean :main_word
      t.integer :order_num
     
      t.integer :lesson_id
      t.timestamps
    end
  end
end
