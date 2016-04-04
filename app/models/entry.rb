class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :pool
  belongs_to :game
  belongs_to :team
end
