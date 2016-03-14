post '/votes' do
  # binding.pry
  Vote.create(post_id:(params[:id]))

end
