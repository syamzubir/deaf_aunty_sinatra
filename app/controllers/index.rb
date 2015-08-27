get '/' do #show something
  @aunty = params[:aunty]
  puts @aunty
  # Look in app/views/index.erb
  # puts params[:papeje]
  erb :index
end

get '/dog' do
  "inside dog"

end

post '/aunty' do #create something
  speech = params[:user_input]
  puts speech #WILL SHOW ON TERMINAL
  # puts params[:user_input] #WILL SHOW ON TERMINAL
  if speech == speech.upcase
  speech = "Hello sexy!"
  else
  speech = "Speak up, Kiddo!"
  end
  redirect to("/?aunty=#{speech}")
end

get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :post_cool_url
end
