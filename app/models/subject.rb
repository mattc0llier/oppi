class Subject < ActiveRecord::Base

	has_many :projects

	has_attached_file :image, default_url: "missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :title, presence: true 



end
