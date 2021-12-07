class ChoicesController < ApplicationController
  before_action :set_choice, only: %i[show edit update destroy]
  def show; end

  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.new(choice_params)
    if @choice.save!
      redirect_to choice_path(@choice)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @choice.update(choice_params)
      redirect_to @choice, notice: "Your choice has been updated"
    else
      redirect_to edit_choice_path(@choice)
    end
  end

  def destroy
    @choice.destroy
    redirect_to @choice, notice: "Your choice has been deleted"
  end

  private

  def choice_params
    params.require(:choice).permit(:action, :result)
  end

  def set_choice
    @choice = Choice.find(params[:id])
  end
end
