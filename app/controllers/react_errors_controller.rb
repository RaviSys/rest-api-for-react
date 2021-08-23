class ReactErrorsController < ApplicationController
  before_action :set_react_error, only: [:show, :update, :destroy]

  # GET /react_errors
  def index
    @react_errors = ReactError.all
    render json: @react_errors.to_json
  end

  # GET /react_errors/1
  def show
    render json: @react_error
  end

  # POST /react_errors
  def create
    @react_error = ReactError.new(react_error_params)

    if @react_error.save
      render json: @react_error, status: :created, location: @react_error
    else
      render json: @react_error.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /react_errors/1
  def update
    if @react_error.update(react_error_params)
      render json: @react_error
    else
      render json: @react_error.errors, status: :unprocessable_entity
    end
  end

  # DELETE /react_errors/1
  def destroy
    @react_error.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_react_error
      @react_error = ReactError.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def react_error_params
      params.require(:react_error).permit(:title, :type)
    end
end
