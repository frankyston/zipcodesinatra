require 'sinatra'
require './zipcode.rb'
require 'json'

get '/:zipcode' do
  content_type :json
  Zipcode.search(params[:zipcode])
end