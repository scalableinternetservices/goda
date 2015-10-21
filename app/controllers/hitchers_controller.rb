class HitchersController < ApplicationController
  def index
     @hitchers = Hitcher.all
  end
  def new
     @hitcher = Hitcher.new
  end

  def create
    @hitcher = current_user.hitchers.build(hitcher_params)

    if @hitcher.save
        flash[:success] = "Hitcher post created!"
        redirect_to current_user
    else
        render "new"
    end
  end
       
    def edit
        @hitcher = Hitcher.find(params[:id])
    end
 
    def update
        @hitcher = Hitcher.find(params[:id])
        if @hitcher.update(hitcher_params)
            redirect_to current_user
        else
            render "edit"
        end    
    end


  def show
     @hitcher = Hitcher.find(params[:id])
  end

  def destroy
     @hitcher = Hitcher.find(params[:id])
     @hitcher.destroy
     redirect_to current_user
  end

  private
  def hitcher_params
    params.require(:hitcher).permit(:departure, :destination, :depart_time, :arrival_time, :description, :num, :contact_info)
  end
end
