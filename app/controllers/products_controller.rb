class ProductsController < RankingController
  def index
    @products = Product.order('open_date DESC').limit(20)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end
end
