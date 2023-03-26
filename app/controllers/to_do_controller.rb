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

  def update
    @to_do = ToDo.find_by(id: params[:id])
    @to_do.update(
      user_id: params[:user_id] || @to_do.user_id,
      title: params[:title] || @to_do.title,
      description: params[:description] || @to_do.description, deadline: params[:deadline] || @to_do.deadline,
      completed: params[:completed] || @to_do.completed
      )


    if @to_do.valid?

      render json: @to_do.as_json
  
    else
    
      render json: {message:to_do.errors.full_messages}, status:422
    end

  end

end
