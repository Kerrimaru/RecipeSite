RecipieSite::App.controllers :categories do

  get :index, :map => '/' do
    @categories = Category.all
    render 'index'
  end

  get :index, :map => '/categories' do
    @categories = Category.all
    render 'categories'
  end


  get :index, :with => :category_id do
    @recipes = Recipe.includes(:categories).where(categories: { id: params[:category_id] })
    # binding.pry
    render 'recipes'
  end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end


end
