class CategoryToDoController < ApplicationController

def create

  @category_to_do = CategoryToDo.new(
    category_id: params[:category_id],
    todo_id: params[:todo_id]
  )

  if @category_to_do.save
    render json: { message: "Category to do created successfully!" }, status: :created
  else
    render json: { errors: @category_to_do.errors.full_messages }, status: :bad_request
  end

end

end
