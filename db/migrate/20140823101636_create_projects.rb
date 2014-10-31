class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :title
      t.text :body
      t.string :url
      t.integer :subject_id

      t.timestamps
    end
  end
end
