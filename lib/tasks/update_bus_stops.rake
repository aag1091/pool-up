# Add all Stops From bus_stop.txt

namespace :seed do

  desc "Add all bus stops from txt"
  task :bus_stops => :environment do

    IO.foreach("db/seeds/bus_stops.txt") do |line|
      if line[-1] == '.'
        line = line[0...-1]
      end
      line = line.chomp
      obj = Stop.find_or_create_by(name: line)
      puts obj.name.inspect
    end

  end

  desc "Add all latitude and longitude for all stops"
  task :add_lat_and_long => :environment do
    Stop.all.each do |stop|
      a = Geokit::Geocoders::YahooGeocoder.geocode(stop.name)
      
    end
  end
end
