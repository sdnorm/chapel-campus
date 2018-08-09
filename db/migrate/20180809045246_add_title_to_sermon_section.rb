class AddTitleToSermonSection < ActiveRecord::Migration[5.2]
  def change
    add_column :sermon_sections, :title, :string
  end
end
