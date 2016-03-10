get '/login' do
  redirect '/' if logged_in?
  erb :login
  # , layout: false
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = ["Wrong creds. Try again."]
    erb :login
    # , layout: false
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
