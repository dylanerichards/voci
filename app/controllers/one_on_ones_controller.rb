class OneOnOnesController < ApplicationController
  before_action :set_one_on_one, only: [:show, :edit, :update, :destroy]

  # GET /one_on_ones
  # GET /one_on_ones.json
  def index
    @one_on_ones = OneOnOne.all
  end

  # GET /one_on_ones/1
  # GET /one_on_ones/1.json
  def show
  end

  # GET /one_on_ones/new
  def new
    @one_on_one = OneOnOne.new
  end

  # GET /one_on_ones/1/edit
  def edit
  end

  # POST /one_on_ones
  # POST /one_on_ones.json
  def create
    @one_on_one = OneOnOne.new(one_on_one_params)

    respond_to do |format|
      if @one_on_one.save
        format.html { redirect_to @one_on_one, notice: 'One on one was successfully created.' }
        format.json { render :show, status: :created, location: @one_on_one }
      else
        format.html { render :new }
        format.json { render json: @one_on_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_on_ones/1
  # PATCH/PUT /one_on_ones/1.json
  def update
    respond_to do |format|
      if @one_on_one.update(one_on_one_params)
        format.html { redirect_to @one_on_one, notice: 'One on one was successfully updated.' }
        format.json { render :show, status: :ok, location: @one_on_one }
      else
        format.html { render :edit }
        format.json { render json: @one_on_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_on_ones/1
  # DELETE /one_on_ones/1.json
  def destroy
    @one_on_one.destroy
    respond_to do |format|
      format.html { redirect_to one_on_ones_url, notice: 'One on one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_on_one
      @one_on_one = OneOnOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def one_on_one_params
      params.require(:one_on_one).permit(:student, :teacher, :topic, :time, :description)
    end
end
