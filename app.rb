require 'sinatra'
require_relative "fancy_random_pairings.rb"

enable :sessions

get '/' do
  erb :first_page
end

post '/name_input' do
  	names = params[:names].join(',')
  	p "names params #{params}"
  	p "#{names.class}"
 	redirect '/grouped_pairs?names=' + names
end

get '/grouped_pairs' do
	result = pairings(params[:names])
	p "second params are #{params}"
	

	#p "result is #{result}

	erb :grouped_pairs, locals:{result: result}
end

# post '/pairs' do
# 	result = pairings(params[:names])
# 	p "result params are #{params}"
# 	erb :grouped_pairs
# end


