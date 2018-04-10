require 'pry'

def second_supply_for_fourth_of_july(hash)

     hash[:summer][:fourth_of_july][1]

   end

   def add_supply_to_winter_holidays(holiday_hash, supply)




        holiday_hash[:winter].each do |holiday, supplies|


          puts supplies << supply

        end

   holiday_hash
  end

def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring].each do |holiday, supplies|


        puts supplies << supply

       end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)

 arr = []

holiday_hash[:winter].each do |holiday, supplies|

    puts arr << supplies
 end
 arr.flatten
end


def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |season, season_data|

 puts "#{season.to_s.capitalize!}:"

season_data.each do |holiday, supply|

  array = holiday.to_s.split("_")

  final_holiday = []

     array.each do |x|

       final_holiday << x.capitalize!

     end

   holiday = final_holiday.join(" ")

   supply = supply.join(", ")
   puts "  #{holiday}: #{supply}"

 end
end

end

def all_holidays_with_bbq(holiday_hash)

arr = []

holiday_hash.each do |season, data|

  data.each do |holiday, value|

    value.each do |supply|

     if supply == "BBQ"

        arr.push(holiday)

      end

    end

  end

 end
arr
end 
