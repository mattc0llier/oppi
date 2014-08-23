class ChangeProjectIdToSubjectId < ActiveRecord::Migration
  def change
  	rename_column :projects, :project_id, :subject_id
  end
end
