class AddSermonSectionNoteParamIdSermonSectionTwo < ActiveRecord::Migration[5.2]
  def change
    add_column :sermon_sections, :sermon_note_param_id, :string
  end
end
