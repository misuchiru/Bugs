class JapanratesController < ApplicationController
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	def index
		@japanrates = Japanrate.all
		
	end
end
