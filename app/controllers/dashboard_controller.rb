class DashboardController < ApplicationController
  before_action :authenticate_user!

def index
  @newteam = Team.new
  @teams = Team.all
  if user_signed_in?
  @user = current_user

  @tasks = Task.where(:user_id => current_user.id).order("created_at DESC")

  @events = @user.events

  @messages = @user.messages



  else
  redirect_to new_session_path
  end




end



end
