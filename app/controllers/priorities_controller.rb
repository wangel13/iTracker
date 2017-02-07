class PrioritiesController < ApplicationController
  before_action :set_priority, only: [:show, :edit, :update, :destroy]

  # GET /priorities
  # GET /priorities.json
  def index
    @priorities = Priority.all
  end

  # GET /priorities/1
  # GET /priorities/1.json
  def show
  end

  # GET /priorities/new
  def new
    @priority = Priority.new
  end

  # GET /priorities/1/edit
  def edit
  end

  # POST /priorities
  # POST /priorities.json
  def create
    @priority = Priority.new(priority_params)

    respond_to do |format|
      if @priority.save
        format.html { redirect_to @priority, notice: 'Priority was successfully created.' }
        format.json { render :show, status: :created, location: @priority }
      else
        format.html { render :new }
        format.json { render json: @priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priorities/1
  # PATCH/PUT /priorities/1.json
  def update
    respond_to do |format|
      if @priority.update(priority_params)
        format.html { redirect_to @priority, notice: 'Priority was successfully updated.' }
        format.json { render :show, status: :ok, location: @priority }
      else
        format.html { render :edit }
        format.json { render json: @priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priorities/1
  # DELETE /priorities/1.json
  def destroy
    @priority.destroy
    respond_to do |format|
      format.html { redirect_to priorities_url, notice: 'Priority was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priority
      @priority = Priority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def priority_params
      params.require(:priority).permit(:description)
    end
end
