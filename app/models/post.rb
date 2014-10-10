class Post < ActiveRecord::Base

	belongs_to :project

	has_attached_file :image
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates_format_of :url, with: URI.regexp


	validates :body, length: { maximum: 1000, minimum: 10 }

	acts_as_taggable 
  	acts_as_taggable_on :skills, :interests
	
end
