require 'ffaker'


namespace :fake do
  desc "adds fake data to your project"
  task :data => :environment do
    puts "========================================"
    puts "== Populating database with fake data =="
    puts "========================================"

   
    def create_product()
      name   = Faker::Product.product_name
      price  = rand(1000) + 1
      puts "    - Creating Product: #{name}: $#{price}"
      Product.create(:name => name, :price => price)
    end

    100.times do
        create_product()
    
    end

    puts "========================================"
    puts "== Done Populating database ============"
    puts "========================================"
  end
end