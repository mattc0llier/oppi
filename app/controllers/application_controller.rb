class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def has_project?
	if post[:project_id].present?
		Post.find(post[:project_id])
	end
end

end
