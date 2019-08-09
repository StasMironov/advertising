class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @articles = Article.find(params[:id])
    end

     def article_params
        params.require(:article).permit(:author, :title, :body, :picture, :crdate, :status)
     end

    def create
        @article = Article.new(params.require(:article).permit(:author, :title, :body, :picture, :crdate, :status))
        @article.save
        redirect_to @article
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
end
