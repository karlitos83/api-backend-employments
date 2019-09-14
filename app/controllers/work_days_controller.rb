class WorkDaysController < ApplicationController
  before_action :authenticate_user
  #before_action :set_work_day, only: [:show, :update, :destroy]

  # GET /work_days
  def index
    if current_user.admin?
      @work_days = WorkDay.all

      render json: @work_days
    end
  end

  # GET /work_days/1
  def show
    @work_day = WorkDay.select("id, user_id, entry_at, departure_at").where(params[:id])
    render json: @work_day
  end

  # POST /work_days
  def create
    if current_user.admin?
      @work_day = WorkDay.new(work_day_params)

      if @work_day.save
        render json: @work_day, status: :created, location: @work_day
      else
        render json: @work_day.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /work_days/1
  def update
    if current_user.admin?
      @work_day = WorkDay.find params[:id]
      if @work_day.update(work_day_params)
        render json: @work_day
      else
        render json: @work_day.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /work_days/1
  def destroy
    if current_user.admin?
      WorkDay.destroy(params[:id])
      #@work_day.destroy
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_day
      @work_day = WorkDay.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def work_day_params
      params.require(:work_day).permit(:user_id, :entry_at, :departure_at)
    end
end
