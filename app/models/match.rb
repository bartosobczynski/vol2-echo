class Match < ApplicationRecord
  belongs_to :league
  belongs_to :player1, class_name: 'User', foreign_key: 'player_1'
  belongs_to :player2, class_name: 'User', foreign_key: 'player_2'
  validates_uniqueness_of :player_2, scope: %i[league_id player_1] #not tested yet
end