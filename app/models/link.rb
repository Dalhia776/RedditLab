class Link < ActiveRecord::Base

  belongs_to :user
  belongs_to :subreddit
  has_many :votes
  acts_as_votable
  has_many :comments, :as => :commentable


  def vote(value,user_id)
    self.votes = Vote.new( :value => 'value', :user => 'user_id')
  end

  def link_url
    self.url
  end


end
