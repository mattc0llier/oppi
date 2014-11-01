class ChangeProjectIdToSubjectId < ActiveRecord::Migration
  def change
  	remove_column :projects, :subject_id
  	rename_column :projects, :project_id, :subject_id
  end
end
