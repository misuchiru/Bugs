class JapanratesController < ApplicationController
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	def index
		url1 = "http://rate.bot.com.tw/Pages/Static/UIP003.zh-TW.htm"
		doc1 = Nokogiri::HTML(open(url1))

		  @title = doc1.at_css(".color1:nth-child(10) .titleLeft").text
		  @price1 = doc1.at_css(".color1:nth-child(10) .titleLeft+ .decimal").text
		  @price2 = doc1.at_css(".color1:nth-child(10) .decimal:nth-child(3)").text
		  @price3 = doc1.at_css(".color1:nth-child(10) .decimal:nth-child(4)").text
		  @price4 = doc1.at_css(".color1:nth-child(10) .decimal:nth-child(5)").text

		url2 = "https://www.cathaybk.com.tw/cathaybk/personal_info07.asp"
		doc2 = Nokogiri::HTML(open(url2))

		  @cprice1 = doc2.at_css("tr:nth-child(15) .td2+ td").text
		  @cprice2 = doc2.at_css("tr:nth-child(15) .td2~ td+ td").text
		  @cprice3 = doc2.at_css("tr:nth-child(16) .td2+ td").text
		  @cprice4 = doc2.at_css("tr:nth-child(16) .td2~ td+ td").text

		
	end
end
