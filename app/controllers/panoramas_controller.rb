class PanoramasController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    puts "Hi"
    @panoramas = Panorama.all

    render json: @panoramas
  end

  def new
    @panorama = Panorama.all
  end

  def show
    @panorama = Panorama.find_by(id: params[:id])

    if @panorama
      render json: @panorama
    else
      render json: { error: "Panorama not found" }, status: :not_found
    end
  end

  def create
    @panorama = Panorama.new(panorama_params)
    if @panorama.save
      render json: @panorama, status: :created
    else
      render json: { errors: @panorama.errors }, status: :unprocessable_entity
    end
  end

  private

  def panorama_params
    params.permit(:title, :description, :image)
  end
end
