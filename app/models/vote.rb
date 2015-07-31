class Vote < ActiveRecord::Base
  belongs_to :link
  belongs_to :voteable, polymorphic: true
  
end
