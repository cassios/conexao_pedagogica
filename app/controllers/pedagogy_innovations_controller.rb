class PedagogyInnovationsController < ApplicationController
  before_action :set_pedagogy_innovation, only: [:show, :edit, :update, :destroy]
  before_action :validadeUser

  # GET /pedagogy_innovations
  # GET /pedagogy_innovations.json
  def index
    @pedagogy_innovations = @_current_user.pedagogy_innovations
  end

  # GET /pedagogy_innovations/1
  # GET /pedagogy_innovations/1.json
  def show
  end

  # GET /pedagogy_innovations/new
  def new
    @pedagogy_innovation = PedagogyInnovation.new
  end

  # GET /pedagogy_innovations/1/edit
  def edit
  end

  # POST /pedagogy_innovations
  # POST /pedagogy_innovations.json
  def create
    @pedagogy_innovation = @_current_user.pedagogy_innovations.new(pedagogy_innovation_params)

    respond_to do |format|
      if not @pedagogy_innovation.save
        format.html { redirect_to @pedagogy_innovation, notice: 'Pedagogy innovation was successfully created.' }
        format.json { render :show, status: :created, location: @pedagogy_innovation }
      else
        format.html { render :new }
        format.json { render json: @pedagogy_innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedagogy_innovations/1
  # PATCH/PUT /pedagogy_innovations/1.json
  def update
    respond_to do |format|
      if @pedagogy_innovation.update(pedagogy_innovation_params)
        format.html { redirect_to @pedagogy_innovation, notice: 'Pedagogy innovation was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedagogy_innovation }
      else
        format.html { render :edit }
        format.json { render json: @pedagogy_innovation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedagogy_innovations/1
  # DELETE /pedagogy_innovations/1.json
  def destroy
    @pedagogy_innovation.destroy
    respond_to do |format|
      format.html { redirect_to pedagogy_innovations_url, notice: 'Pedagogy innovation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedagogy_innovation
      @pedagogy_innovation = PedagogyInnovation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedagogy_innovation_params
      puts "*********************************************************\n"
      puts params[:pedagogy_innovation]
      params.require(:pedagogy_innovation).permit(:title, :description, :achievements)
    end
end
