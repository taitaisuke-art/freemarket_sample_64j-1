class ProfilesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @profile = Profile.new
  end

  def create
    Profire.create(create_params)
    redirect_to :back
  end


  private
  def create_params
    params.require(:profile).permit(:text, :icon).merge(user_id: current_user.id)
  end

end
