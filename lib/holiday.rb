require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.collect do |season, holiday_info|
    holiday_info.each do |holiday, supply_array|
      if holiday == :fourth_of_july
         return supply_array[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.collect do |season, holiday_info|
    holiday_info.each do |holiday, supply_array|
      if holiday == :christmas || holiday == :new_years
        supply_array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.collect do |season, holiday_info|
    holiday_info.each do |holiday, supply_array|
      if holiday == :memorial_day
        supply_array << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.collect do |seasons, holiday_info|
    if seasons == season
      holiday_hash[seasons] = {holiday_name => supply_array}
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
winter_supplies = []
  holiday_hash.each do |season, holiday_info|
    if season == :winter
      return  holiday_info.values.flatten
    end
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday_info|
   puts "#{season.capitalize}:"

   holiday_info.each do |holiday, supplies_array|
     puts "  #{holiday.to_s.split("_").each {|holiday_word| holiday_word.capitalize!}.join(" ")}: #{supplies_array.join(", ")}"
   end

end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array =[]
  holiday_hash.each do |season, holiday_info|
    holiday_info.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holiday_array << holiday

      end

    end
  end
  holiday_array
end
