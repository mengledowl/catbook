class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      flash[:success] = 'Article created successfully!'
      redirect_to articles_path
    else
      flash[:danger] = 'An error occurred.'
      redirect_to articles_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:body, :image_source)
  end
end
