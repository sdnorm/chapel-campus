class AddSermonSectionNoteParamIdSermonSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sermon_section, :sermon_note_param_id, :string
  end
end
