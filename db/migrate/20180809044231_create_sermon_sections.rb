class CreateSermonSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sermon_sections do |t|
      t.text :speaker_note
      t.text :personal_note
      t.references :sermon, foreign_key: true

      t.timestamps
    end
  end
end
