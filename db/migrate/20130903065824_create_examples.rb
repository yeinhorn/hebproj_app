class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :hebrew_sentence
      t.string :ivrit_sentence
      t.string :english_sentence
      t.string :french_sentence
      t.string :spanish_sentence
      t.string :russian_sentence
      t.string :portugese_sentence
      t.string :dutch_sentence
      t.string :german_sentence

      t.string :hebrew_note
      t.string :ivrit_note
      t.string :english_note
      t.string :french_note
      t.string :spanish_note
      t.string :russian_note
      t.string :portugese_note
      t.string :dutch_note
      t.string :german_note
      t.integer :lesson_id
      t.timestamps
    end
  end
end
