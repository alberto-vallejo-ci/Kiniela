class TeamsController < ApplicationController
	def index
		
	end

	def show
		@teams = Team.all
	end

	def new
		@team = Team.new
	end

	def create
		Team.create(name: params[:name])
		render action: 'show'
	end
end
