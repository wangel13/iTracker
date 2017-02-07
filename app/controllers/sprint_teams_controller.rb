class SprintTeamsController < ApplicationController
  before_action :set_sprint_team, only: [:show, :edit, :update, :destroy]

  # GET /sprint_teams
  # GET /sprint_teams.json
  def index
    @sprint_teams = SprintTeam.all
  end

  # GET /sprint_teams/1
  # GET /sprint_teams/1.json
  def show
  end

  # GET /sprint_teams/new
  def new
    @sprint_team = SprintTeam.new
  end

  # GET /sprint_teams/1/edit
  def edit
  end

  # POST /sprint_teams
  # POST /sprint_teams.json
  def create
    @sprint_team = SprintTeam.new(sprint_team_params)

    respond_to do |format|
      if @sprint_team.save
        format.html { redirect_to @sprint_team, notice: 'Sprint team was successfully created.' }
        format.json { render :show, status: :created, location: @sprint_team }
      else
        format.html { render :new }
        format.json { render json: @sprint_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprint_teams/1
  # PATCH/PUT /sprint_teams/1.json
  def update
    respond_to do |format|
      if @sprint_team.update(sprint_team_params)
        format.html { redirect_to @sprint_team, notice: 'Sprint team was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprint_team }
      else
        format.html { render :edit }
        format.json { render json: @sprint_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprint_teams/1
  # DELETE /sprint_teams/1.json
  def destroy
    @sprint_team.destroy
    respond_to do |format|
      format.html { redirect_to sprint_teams_url, notice: 'Sprint team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprint_team
      @sprint_team = SprintTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprint_team_params
      params.require(:sprint_team).permit(:sprint_id, :team_id)
    end
end
