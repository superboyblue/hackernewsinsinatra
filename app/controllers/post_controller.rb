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
