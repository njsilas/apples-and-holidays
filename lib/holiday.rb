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
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash.each do |season, holiday|
 if season == :winter
    holiday.each do |day, things|
      things << "Balloons"
    end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
       
      holiday.each do |day, things|
              things << "#{supply}"        
      end
    end
  end

end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash.each do |time, holiday|
  
  if season == time
    
    holiday_hash[time].merge!({holiday_name => supply_array})
    end
  end

end



def all_winter_holiday_supplies(holiday_hash)
  sus = []
  holiday_hash.each do |season, holiday|
    
    if season == :winter
       holiday.each do|day, things|
        
        
        things.each do|it|
          sus << it
       end
      end
    end 
  end
  sus
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holiday|
  puts season.to_s.capitalize + ":"
holiday.each do |day, things|
  puts "  "+ day.to_s.split('_').map(&:capitalize).join(' ') + ": " + things.join(", ")
  
end
end


end
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
nu_a= []
  holiday_hash.each do |season, holiday|
  holiday.each do |day, stuff|
  if stuff.any?{|word| word == "BBQ"}
  nu_a << day
  end

  end

  end
nu_a
end







