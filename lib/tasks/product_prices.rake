desc "Fetch Japan rates"
task :fetch_rates => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  Japanrate.all.each do |rate|
    url = "#{rate.url}"
    doc = Nokogiri::HTML(open(url))
    price1 = doc.at_css("#{rate.cashrate_buy}").text
    price2 = doc.at_css("#{rate.cashrate_sell}").text
    price3 = doc.at_css("#{rate.sightrate_buy}").text
    price4 = doc.at_css("#{rate.sightrate_sell}").text
    rate.update_attribute(:price1, price1)
    rate.update_attribute(:price2, price2)
    rate.update_attribute(:price3, price3)
    rate.update_attribute(:price4, price4)
  end
end