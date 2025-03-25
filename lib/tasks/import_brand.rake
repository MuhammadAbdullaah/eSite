namespace :import do
  desc "Import Brands"
  task brands: :environment do
    brands = [
      "Nike", "Adidas", "Zara", "H&M", "Gucci",
      "Louis Vuitton", "Puma", "Levi's", "Uniqlo", "Tommy Hilfiger",
      "Calvin Klein", "Under Armour", "Dolce & Gabbana", "Versace", "Armani",
      "Ralph Lauren", "Hugo Boss", "Burberry", "Chanel", "Balenciaga",
      "Fendi", "Prada", "Michael Kors", "Lacoste", "The North Face",
      "Columbia", "Patagonia", "Supreme", "Off-White", "Bape",
      "Stussy", "Vans", "Converse", "Timberland", "Reebok",
      "Gap", "Forever 21", "ASOS", "Boohoo", "Missguided",
      "Shein", "Primark", "Topshop", "River Island", "Mango",
      "Bershka", "Pull & Bear", "Massimo Dutti", "Ted Baker", "Superdry",
      "Diesel", "Wrangler", "Lee", "True Religion", "Guess",
      "Hollister", "Abercrombie & Fitch", "American Eagle", "Old Navy", "Victoria's Secret",
      "Lululemon", "Athleta", "Gymshark", "Fila", "Umbro",
      "Ellesse", "Kappa", "Champion", "Carhartt", "Dickies",
      "Khaadi", "Sapphire", "Gul Ahmed", "Alkaram Studio", "Bareeze",
      "Nishat Linen", "Sana Safinaz", "ChenOne", "Bonanza Satrangi", "J.",
      "Outfitters", "Ethnic by Outfitters", "Limelight", "Generation", "Ideas by Gul Ahmed",
      "Kayseria", "Maria B.", "Sobia Nazir", "Zellbury", "Elan",
      "Asim Jofa", "Rastah", "Élan Vital", "Sania Maskatiya", "Deepak Perwani",
      "Hussain Rehar", "Sapphire Unstitched", "Al Zohaib", "Jazmin", "Sufi by Nishat",
      "Zaha", "Ego", "Chinyere", "Firdous", "Sirella"
    ]

    brands.each do |brand|
      Brand.create(name: brand, active: true, slug: "#{brand}-#{brands.index(brand)}")
      puts "Added #{brand} Brand"
    end

    puts "ALL BRANDS HAS BEEN ADDED"

  end
end