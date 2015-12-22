class JapanRateService
	require 'nokogiri'
	require 'open-uri'

	def initialize(rates)
		@rates = rates
	end
	def bank_rate
		@rates.each do |rate|
			@price1 = doc.at_css("#{rate.cashrate_buy}").text
			
		end
	end
end