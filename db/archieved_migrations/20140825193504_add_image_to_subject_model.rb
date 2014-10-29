class AddImageToSubjectModel < ActiveRecord::Migration
  def change
  	add_attachment :subjects, :image
  end
end
