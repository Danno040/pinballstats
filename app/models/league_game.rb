class LeagueGame < ActiveRecord::Base
	belongs_to :game
	belongs_to :league_night

	def dropdown_title
		game.dropdown_title
	end

	def scores(group = nil)
		if group
			Score.where(league_game: self, group: group).order("score desc")
		else
			Score.where(league_game: self).order("score desc")
		end
	end
end
