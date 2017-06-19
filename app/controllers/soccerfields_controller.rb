class SoccerfieldsController < ApplicationController
  before_action :set_soccerfield, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:new, :edit]
  before_action :set_code, only: [:new, :edit]

  def set_code
    @code = ['CF001', 'CF002', 'CF003', 'CF004', 'CF005', 'CF006', 'CF007', 'CF008', 'CF009', 'CF010']
  end  

  # GET /soccerfields
  # GET /soccerfields.json
  def index
    @soccerfields = Soccerfield.all
  end

  # GET /soccerfields/1
  # GET /soccerfields/1.json
  def show
  end

  # GET /soccerfields/new
  def new
    @soccerfield = Soccerfield.new    
  end

  # GET /soccerfields/1/edit
  def edit
  end

  # POST /soccerfields
  # POST /soccerfields.json
  def create
    @soccerfield = Soccerfield.new(soccerfield_params)
    @soccerfield.state = 1

    respond_to do |format|
      if @soccerfield.save
        format.html { redirect_to @soccerfield, notice: 'Reserva creada con éxito.' }
        format.json { render :show, status: :created, location: @soccerfield }
      else
        format.html { render :new }
        format.json { render json: @soccerfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soccerfields/1
  # PATCH/PUT /soccerfields/1.json
  def update
    respond_to do |format|
      if @soccerfield.update(soccerfield_params)
        format.html { redirect_to @soccerfield, notice: 'Reserva actualizada con éxito.' }
        format.json { render :show, status: :ok, location: @soccerfield }
      else
        format.html { render :edit }
        format.json { render json: @soccerfield.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soccerfields/1
  # DELETE /soccerfields/1.json
  def destroy
    @soccerfield.destroy
    respond_to do |format|
      format.html { redirect_to soccerfields_url, notice: 'Reserva eliminada con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soccerfield
      @soccerfield = Soccerfield.find(params[:id])
    end

    def set_user
      @user = User.all
    end    

    # Never trust parameters from the scary internet, only allow the white list through.
    def soccerfield_params
      params.require(:soccerfield).permit(:code, :state, :date, :time, :user_id)
    end
end
