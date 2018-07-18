require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = nil
  data.each do |season_number, season_data|
    if season_number == season
      season_data.each do |contestants_data|
        contestants_data.each do |k, v|
          if k == "status" && v == "Winner"
            winner_name = contestants_data["name"].split.first
          end
        end
      end
    end
  end
  winner_name
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, season_data|
    season_data.each do |contestants_data|
      contestants_data["occupation"] == occupation
        return contestants_data["name"] 
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_contestants = []
  data.each do |season_number, season_data|
    season_data.each do |contestants_data|
      contestants_data.each do |k, v|
        if k == "hometown" && v == hometown
          hometown_contestants << contestants_data["name"] 
        end
      end
    end
  end
  hometown_contestants.length
end

def get_occupation(data, hometown)
  # code here
  contestant_occupation = []
  data.each do |season_number, season_data|
    season_data.each do |contestants_data|
      contestants_data.each do |k, v|
        if v == hometown
          contestant_occupation << contestants_data["occupation"]
        end
      end
    end
  end
  contestant_occupation.first
end

def get_average_age_for_season(data, season)
  # code here
  average_array = []
  average_age = nil
  data.each do |season_number, season_data|
    if season_number == season
      season_data.each do |contestants_data|
        contestants_data.each do |k, v|
          if k == "age"
            average_array << v.to_f
            average_age = average_array.inject {|sum, i|sum + i} / average_array.size
          end
        end
      end
    end
  end
  average_age.round
end
