class Post < ActiveRecord::Base
	belongs_to :project
	
	has_attached_file :image, default_url: "missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates_format_of :url, with: URI.regexp
	validates :url, presence: true

	validates :title, presence: true 

	validates :body, length: { maximum: 1000, minimum: 20 }
end
