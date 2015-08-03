class VotesController < ApplicationController

  before_action :authenticate_user!

  def create
    link = Link.find(params[:link_id])
    vote= Vote.new(:value => params[:value], :user => current_user)
    link.votes << vote
    if vote.persisted?
      redirect_to :back, :notice =>"You voted!"
    else
      redirect_to :back, :notice => "You already told us your opinion on that."
  end
end

  def update
    link = Link.find(params[:link_id])
    vote = link.votes.where(:user_id => current_user.id).find(params[:id])
    if vote.update(:value => params[:value])
      redirect_to :back, :notice => "Your vote has been updated!"
    else
      redirect_to :back, :notice => "That is not a valid vote"
    end
  end

end
