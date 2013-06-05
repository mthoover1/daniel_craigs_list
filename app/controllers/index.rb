get '/' do
  @categories = Category.all

  erb :index
end

get '/:category' do
  @category_id = params[:category]
  @category = Category.where(:id => @category_id).first
  redirect '/' if @category == nil
  @posts = Post.where(:category_id => @category_id)
  erb :category_page
end

get '/:category/:post' do
  @post = Post.where(:id => params[:post]).first

  erb :post_page
end

post '/post' do
  erb :create_post_page
end
