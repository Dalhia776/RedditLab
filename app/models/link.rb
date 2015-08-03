class Link < ActiveRecord::Base

  validates_presence_of :title
  has_many :votes, dependent: :destroy

end
