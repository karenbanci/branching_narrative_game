class TalesController < ApplicationController
  before_action :set_tale, only: %i[show edit update destroy]

  def index
    @tales = Tale.all
  end

  def show
    @tale = Tale.find(params[:id])
    @scenes = @tale.scenes.order(:created_at)
  end

  def new
    @tale = Tale.new
  end

  def create
    @tale = Tale.new(tale_params)
    @tale.user = current_user
    if @tale.save!
      redirect_to tales_path(@tale)
    else
      redirect_to new_tale_path
    end
  end

  def update
    # authorize @tale
    if @tale.update(tale_params)
      redirect_to @tale, notice: "Your tale has been updated"
    else
      redirect_to edit_tale_path(@tale)
    end
  end

  def destroy
    # authorize @tale
    @tale.destroy
    redirect_to tales_url, notice: "Your tale has been deleted"
  end

  private

  def tale_params
    params.require(:tale).permit(:name, :description)
  end

  def set_tale
    @tale = Tale.find(params[:id])
  end
end
