class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

   def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
     respond_to do |format|
       format.html {redirect_to @post}
       format.js
     end
  end
 end
