
# class PostsController < ApplicationController

#   def index  # indexアクションを定義した
#     @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
#   end
 
#  end

 class PostsController < ApplicationController
  def index
    @posts = Post.all  # 1番目のレコードを@postに代入
  end

  def new
  end
  
  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end