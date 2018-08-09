class CreateSermons < ActiveRecord::Migration[5.2]
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :speaker
      t.datetime :date

      t.timestamps
    end
  end
end
