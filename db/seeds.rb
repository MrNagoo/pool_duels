# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


unless user1 = User.where(email: "aaron@aaron.com").take
  user1 = User.create(email: "aaron@aaron.com", password: "password")
end

unless user2 = User.where(email: "chien@chien.com").take
  user2 = User.create(email: "chien@chien.com", password: "password")
end

Pool.where(name: "Aaron's Pool", owner_id: user1).first_or_create
chien_pool = Pool.where(name: "Chien's Pool", owner_id: user2).first_or_create

PoolMembership.create(pool_id: chien_pool.id, user_id: user1)

week = Week.create(number: 1, start_time: 1.day.ago)

team1 = Team.create(name: "Cleveland")
team2 = Team.create(name: "Denver")

game = Game.create(home_team_id: team1.id, away_team_id: team2.id, week_id: week.id, winner_team_id: team1.id)

entry = Entry.create(user_id: user1.id, pool_id: chien_pool.id, game_id: game.id, team_id: game.winner_team_id, confidence_order: 16)
