class ToDoController < ApplicationController

  def create

    @to_do = ToDo.new(
      user_id: params[:user_id],
      title: params[:title],
      description: params[:description],
      deadline: params[:deadline],
      completed: params[:completed]
    )

    if @to_do.save
      render json: { message: "To do list created successfully!" }, status: :created
    else
      render json: { errors: @to_do.errors.full_messages }, status: :bad_request
    end

  end

end
