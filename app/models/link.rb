class Link < ActiveRecord::Base

  validates_presence_of :title
  has_many :votes, dependent: :destroy

  def total_votes
    self.upvote + self.downvote
  end

  def upvote
    self.votes.where(vote: true).size
  end

  def downvote
    self.votes.where(vote: false).size
  end


end
