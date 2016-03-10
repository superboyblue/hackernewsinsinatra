get '/' do
 redirect '/posts'
end

get '/posts' do
  @posts = Post.all
  erb :"/posts/index"
end

get '/posts/new' do
  erb :"/posts/new"
end

post '/posts' do
  post = Post.new(params)
    if post.save
      redirect "/posts"
    else
      @errors = post.errors.full_messages
    erb :"/posts/new"
  end
end

get '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  erb :"/posts/show"
end

delete '/posts/:id' do
  binding.pry
  post = Post.find_by(id: params[:id])
  post.destroy
    redirect "/users/#{post.user.id}"
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
    erb :"/posts/edit"
end

put '/posts/:id' do
  @post = Post.find_by(id: params[:id])
  @post.update(title: params[:title],link: params[:link])
  binding.pry
    redirect "/posts/#{@post.id}"
end
