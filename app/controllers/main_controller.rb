class MainController < ApplicationController
	index def 
		@main = Project.all
	end
end
