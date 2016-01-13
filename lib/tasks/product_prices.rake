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
task :fetch_weathers => :environment do
  require 'nokogiri'
  require 'open-uri'
  
  JapanWeather.all.each do |weather|
    url = "#{weather.url}"
    doc = Nokogiri::HTML(open(url))
    day1 = doc.at_css("td:nth-child(1) .date").text
    day1_h = doc.at_css("td:nth-child(1) .high em").text
    day1_l = doc.at_css("td:nth-child(1) .low em").text
    day1_p = doc.at_css("td:nth-child(1) .pict img")[:src].split('/').last
    
    day2 = doc.at_css("td+ td .date").text
    day2_h = doc.at_css("td+ td .high em").text
    day2_l = doc.at_css("td+ td .low em").text
    day2_p = doc.at_css("td+ td .pict img")[:src].split('/').last

    day3 = doc.at_css(".yjw_table tr:nth-child(1) td:nth-child(2) small").text
    day3_h = doc.at_css("td:nth-child(2) font:nth-child(1)").text
    day3_l = doc.at_css("td:nth-child(2) br+ font").text
    day3_p = doc.at_css("#yjw_week td:nth-child(2) img")[:src].split('/').last

    day4 = doc.at_css("tr:nth-child(1) td:nth-child(3) small").text
    day4_h = doc.at_css("td:nth-child(3) font:nth-child(1)").text
    day4_l = doc.at_css("td:nth-child(3) br+ font").text
    day4_p = doc.at_css("td:nth-child(3) img")[:src].split('/').last

    day5 = doc.at_css("tr:nth-child(1) td:nth-child(4) small").text
    day5_h = doc.at_css("td:nth-child(4) font:nth-child(1)").text
    day5_l = doc.at_css("td:nth-child(4) br+ font").text
    day5_p = doc.at_css("td:nth-child(4) img")[:src].split('/').last

    day6 = doc.at_css("tr:nth-child(1) td:nth-child(5) small").text
    day6_h = doc.at_css("td:nth-child(5) font:nth-child(1)").text
    day6_l = doc.at_css("td:nth-child(5) br+ font").text
    day6_p = doc.at_css("td:nth-child(5) img")[:src].split('/').last

    day7 = doc.at_css("tr:nth-child(1) td:nth-child(6) small").text
    day7_h = doc.at_css("td:nth-child(6) font:nth-child(1)").text
    day7_l = doc.at_css("td:nth-child(6) br+ font").text
    day7_p = doc.at_css("td:nth-child(6) img")[:src].split('/').last
    
    weather.update_attribute(:day1, day1)
    weather.update_attribute(:day2, day2)
    weather.update_attribute(:day3, day3)
    weather.update_attribute(:day4, day4)
    weather.update_attribute(:day5, day5)
    weather.update_attribute(:day6, day6)
    weather.update_attribute(:day7, day7)
    weather.update_attribute(:day1_h, day1_h)
    weather.update_attribute(:day1_l, day1_l)
    weather.update_attribute(:day2_h, day2_h)
    weather.update_attribute(:day2_l, day2_l)
    weather.update_attribute(:day3_h, day3_h)
    weather.update_attribute(:day3_l, day3_l)
    weather.update_attribute(:day4_h, day4_h)
    weather.update_attribute(:day4_l, day4_l)
    weather.update_attribute(:day5_h, day5_h)
    weather.update_attribute(:day5_l, day5_l)
    weather.update_attribute(:day6_h, day6_h)
    weather.update_attribute(:day6_l, day6_l)
    weather.update_attribute(:day7_h, day7_h)
    weather.update_attribute(:day7_l, day7_l)
    weather.update_attribute(:day1_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day1_p)
    weather.update_attribute(:day2_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day2_p)
    weather.update_attribute(:day3_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day3_p)
    weather.update_attribute(:day4_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day4_p)
    weather.update_attribute(:day5_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day5_p)
    weather.update_attribute(:day6_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day6_p)
    weather.update_attribute(:day7_p, "http://i.yimg.jp/images/weather/general/forecast/size75/" + day7_p)
  end
end