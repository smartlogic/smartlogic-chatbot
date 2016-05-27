class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save   
    redirect_to @article
    end 
  end
  private
    def article_params
      params.require(:article).permit(:token, :team_id, :team_domain, :channel_id, :channel_name, :user_id, :user_name, :text, :trigger_word)
    end
end
