get '/comments/new' do
  erb :"comments/new"
end

post '/comments' do
    comment = Comment.new(params)
    comment.user_id = session[:user_id]
    if comment.save
      redirect "/posts/#{comment.post.id}"
    else
      @errors = post.errors.full_messages
      erb :"/posts/#{comment.post.id}"
    end
end
