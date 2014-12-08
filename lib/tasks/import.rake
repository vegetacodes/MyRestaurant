namespace :import do

  desc "Import locations." 
  task :locations => :environment do
    puts "importing locations..."
    File.open("location.txt", "r").each do |line|
     restaurant_id,street, zip, city, state = line.strip.split(",")
      r = Location.new(:restaurant_id => restaurant_id, :street => street, :zip => zip, :city => city, :state => state)
     r.save
    end
    puts "import complete: imported"
  end

  desc "Pick a random user as the winner"
    task :restaurants => :environment do
    puts "importing rests..."
    File.open("restaurants.txt", "r").each do |line|
      name, phone, delivery, rating, timings, category = line.strip.split(",")
      r = Restaurant.new(:name => name, :phone => phone, :rating => rating, :timings => timings, :category => category)
      r.save
    end
    puts "import complete: imported"
  end

  desc "Pick a random user as the winner"
    task :menus => :environment do
      puts "importing menus..."
      File.open("menu.txt", "r").each do |line|
        item_id, price = line.strip.split(",")
        r = Menu.new(:item_id => item_id, :price => price)
        r.save      
      end 
      puts "import complete: imported" 
    end
  
  desc "Pick a random user as the winner"
    task :items => :environment do
      puts "importing items..."
      File.open("item.txt", "r").each do |line|
        name = line.strip
        # binding.pry
        r = Item.new()
        r.name = name
        # binding.pry
        r.save
        # binding.pry      
      end
      puts "import complete: imported"   
  end
end
