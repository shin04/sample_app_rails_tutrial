class AbcdsController < ApplicationController
  before_action :set_abcd, only: [:show, :edit, :update, :destroy]

  # GET /abcds
  # GET /abcds.json
  def index
    @abcds = Abcd.all
  end

  # GET /abcds/1
  # GET /abcds/1.json
  def show
  end

  # GET /abcds/new
  def new
    @abcd = Abcd.new
  end

  # GET /abcds/1/edit
  def edit
  end

  # POST /abcds
  # POST /abcds.json
  def create
    @abcd = Abcd.new(abcd_params)

    respond_to do |format|
      if @abcd.save
        format.html { redirect_to @abcd, notice: 'Abcd was successfully created.' }
        format.json { render :show, status: :created, location: @abcd }
      else
        format.html { render :new }
        format.json { render json: @abcd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abcds/1
  # PATCH/PUT /abcds/1.json
  def update
    respond_to do |format|
      if @abcd.update(abcd_params)
        format.html { redirect_to @abcd, notice: 'Abcd was successfully updated.' }
        format.json { render :show, status: :ok, location: @abcd }
      else
        format.html { render :edit }
        format.json { render json: @abcd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abcds/1
  # DELETE /abcds/1.json
  def destroy
    @abcd.destroy
    respond_to do |format|
      format.html { redirect_to abcds_url, notice: 'Abcd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abcd
      @abcd = Abcd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abcd_params
      params.require(:abcd).permit(:efg)
    end
end
