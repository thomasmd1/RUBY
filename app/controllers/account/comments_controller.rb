class Account::CommentsController < Account::AccountController
  def create
    raise params.inspect
    @comment = Comment.create(
      user_id: current_user.id,
      content: params[:comment][:content],
      listing_id: params[:comment][:listing_id]
    )

    raise @comment.inspect
  end
end
