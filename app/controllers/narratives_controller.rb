class NarrativesController < ApplicationController

  def update
    @narrative = Narrative.first
    if params[:pc_name] == ""
      @narrative.update(pc_name: "Captain")
    else
      @narrative.update(pc_name: params[:pc_name])
    end
    redirect_to scene_path(1)

  end

  private

  # def narratives_params
  #   params.require(:narrative).permit(:pc_name)
  # end
end
