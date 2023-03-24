class CategoryController < ApplicationController


  def create

    @category = Category.new(
      name: params[:name]
    )
  
    if @category.save
      render json: { message: "Category created successfully!" }, status: :created
    else
      render json: { errors: @category.errors.full_messages }, status: :bad_request
    end
  
  end



end


