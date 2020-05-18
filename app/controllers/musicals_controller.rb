class MusicalsController < ApplicationController
  before_action :set_musical, only: [:show, :update, :destroy]

  # GET /musicals
  def index
    @musicals = Musical.all

    render json: @musicals
  end

  # GET /musicals/1
  def show
    render json: @musical.to_json(include: :reviews)
  end

  # POST /musicals
  def create
    @musical = Musical.new(musical_params)

    if @musical.save
      render json: @musical, status: :created, location: @musical
    else
      render json: @musical.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /musicals/1
  def update
    if @musical.update(musical_params)
      render json: @musical
    else
      render json: @musical.errors, status: :unprocessable_entity
    end
  end

  # DELETE /musicals/1
  def destroy
    @musical.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musical
      @musical = Musical.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def musical_params
      params.require(:musical).permit(:name, :cast, :understudies, :theater, :playbill)
    end
end
