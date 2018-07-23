ny_weather= 
{
    :city => "New York",
    :description => "Partly Cloudy",
    :temperature_farenheit => 66.3,
    :temperature_celcius => 19.1
}

# 1. Complete the method below called location, that accepts a hash called weather as an argument so that it returns the value of city from the weather hash. 
def location(weather)
  weather[:city]
end

# 2. Using the location method as a guide, write a  method called "description" so it returns the description from the weather hash. 
def description(weather)
	weather[:description]
end

# 3. Using the methods above and string interpolation, update the method below so that it returns a string that describes the current weather - for example: "The weather in New York is Partly Cloudy. The temperature is 66.1 degrees Farenheit." HINT: the method should RETURN the string, not print it to the terminal. 

def weather_report(weather)
  return "The weather in " + location(weather) + " is " + description(weather) + ". The temperature is " + weather[:temperature_farenheit].to_s + " degrees Farenheit."
 end

  def city_weather_info(weather)
    weather.each do |key, value|
      "The " + key.to_s + " is " + value.to_s + "."
    end
  end
# BONUS:  Write a method that takes in the weather hash as an argument and converts the farenheit temperature to celcius. Have the method round your answer to two decimal places. Is there a method we can use to round in Ruby?

# Hint - how can we find the algorithm to convert Farenheit to Celsius?

def convert_temp(weather)
  ((weather[:temperature_farenheit] - 32) * 5.0 / 9.0).round(2)
end