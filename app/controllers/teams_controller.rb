class TeamsController < ApplicationController
	respond_to :html, :json

	def index
		@teams = Team.order('name ASC')
		respond_with @teams, root: false
	end

	def update
		@team = Team.find(params[:id])
		@team.update_attribute(:name, params[:name])
		respond_with @team
	end

	def create
		@team = Team.create(params[:team])
		respond_with @team
	end
	
	def destroy
		@team = Team.find(params[:id]).destroy
		respond_with @team
	end
end
