class TeamsController < ApplicationController
	respond_to :html, :json
	
	def index
		@teams = Team.order('name ASC')
		respond_with @teams
	end

	def show
		
	end

	def new
		@team = Team.new
	end

	def create
		Team.create(params[:team])
		redirect_to :back
	end
	def destroy
		Team.find(params[:id]).destroy
		redirect_to :back
	end
end
