class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    Article.create(article_params)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(task_params)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

private
  def article_params
    params.require(:article).permit(:name, :detail, :completed)
  end
end
