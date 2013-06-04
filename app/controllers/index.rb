get '/' do
  #Run some ruby method that populates a list
  @populate = Category.populate

  erb :index
end
