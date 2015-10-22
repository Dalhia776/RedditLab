class VotesController < ApplicationController

  before_action :authenticate_user!

  def create
  link = Link.find(params[:link_id])
  vote = Vote.new(:value => params[:value], :user => current_user)
  link.votes << vote
  if vote.persisted?
    redirect_to :back, :notice => "Vote for Pedro!"
  else
    redirect_to :back, :notice => "You shall not pass (or vote on this again)!"
  end
end

def update
  link = Link.find(params[:link_id])
  vote = link.votes.where(:user_id => current_user.id).find(params[:id])
  if vote.update(:value => params[:value])
    redirect_to :back, :notice => "Pedro offers you his protection!"
  else
    redirect_to :back, :notice => "That's not a valid vote (and these brownies suck!)."
  end
end

end
