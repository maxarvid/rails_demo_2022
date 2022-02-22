class Api::ArticlesController < ApplicationController
  def index
    # binding.pry
    articles = Article.all
    render json: { articles: articles }
  end

  def show
    article = Article.find(params[:id])
    render json: { article: article }
  end

  # def create

  # end

  # def update

  # end

  # def delete

  # end
end
