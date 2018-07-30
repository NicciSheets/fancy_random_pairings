require 'sinatra'
require_relative "fancy_random_pairings.rb"

enable :sessions

get '/' do
  erb :first_page
end

post '/name_input' do
  	names = params[:names]
  	result = pairings(names).to_s
  	p "result #{result}"
 	redirect '/pairs?result=' + result 
end

get '/pairs' do
	p "pairs is #{params}"
	result = params[:result]
	p "result is #{result}"
  erb :grouped_pairs, locals:{result: result}
end



