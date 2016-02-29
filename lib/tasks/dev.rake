namespace :dev do
  desc "Import data from a CSV file"
  task importcsv: :environment do
    require 'csv'
    puts "Hello, world"
    CSV.foreach("data/inventory_seed.csv", :headers => true) do |row|
      Item.create!(row.to_hash)
    end
  end
  task rm_data1234: :environment do
    Item.destroy_all
  end
end
