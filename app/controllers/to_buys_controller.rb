class ToBuysController < ApplicationController
  before_action :authenticate_user!
  def create
    @work = Work.find(params[:work_id])
    @to_buy = ToBuy.new(work: @work, user: current_user, completed: true)
    if @to_buy.save
      redirect_to works_path, notice: 'Save'
    else
      redirect_to works_path, alert: 'not Save'
    end
  end

def index
  @works = current_user.works
end

  def destroy
  @work = Work.find(params[:work_id])
  @to_buy = ToBuy.where(user: current_user, work: @work).first
  @to_buy.completed = false
      if @to_buy.destroy
        redirect_to works_path, notice: 'Save'
      else
        redirect_to works_path, alert: 'not Save'
      end
  end
end
