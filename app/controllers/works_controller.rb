class WorksController < ApplicationController
  def index
    @works = Work.all
  end
  def show
    @work = Work.find(params[:id])
    @users = @work.user
    @fast_to_buy = @work.to_buys.order(:create_at).limit(5) 
  end

end
