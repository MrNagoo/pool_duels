class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.save
      redirect_to '/teams'
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update_attributes(team_params)
    if @team.save
      redirect_to :index
    else
      render :edit
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :won_game?)
  end
end
