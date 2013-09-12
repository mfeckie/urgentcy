class UrgencyCategoriesController < ApplicationController
  before_action :set_urgency_category, only: [:show, :edit, :update, :destroy]

  def index
    @urgency_categories = UrgencyCategory.all
  end

  def show
  end

  def new
    @urgency_category = UrgencyCategory.new
  end

  def edit

  end

  def create
    @urgency_category = UrgencyCategory.new(urgency_category_params)

    respond_to do |format|
      if @urgency_category.save
        format.html { redirect_to @urgency_category, notice: "Urgency category successfully created"}
        format.json { render action: 'show', status: :created, location: @urgency_category}
      else
        format.html { render action: :new}
        format.json { render json: @urgency_category.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    respond_to do |format|
      if @urgency_category.update(urgency_category_params)
        format.html { redirect_to @urgency_category, notice: "Urgency category successfully updated"}
        format.json { head :no_content}
      else
        format.html { render action: :edit}
        format.json { render json: @urgency_category.errors, status: :unprocessable_entity}
      end

    end
  end

  def destroy
    @urgency_category.destroy
    respond_to do |format|
      format.html { redirect_to urgency_categories_url}
      format.json { head :no_content}
    end
  end

  private

  def set_urgency_category
    @urgency_category = UrgencyCategory.find(params[:id])
  end

  def urgency_category_params
    params.require(:urgency_category).permit(:name, :number, :acceptable_wait_hours, :acceptable_wait_minutes)
  end

end
