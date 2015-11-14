class CtsController < ApplicationController
  before_action :set_ct, only: [:show, :edit, :update, :destroy]

  # GET /cts
  # GET /cts.json
  def index
    @cts = Ct.all
  end

  # GET /cts/1
  # GET /cts/1.json
  def show
  end

  # GET /cts/new
  def new
    @ct = Ct.new
  end

  # GET /cts/1/edit
  def edit
  end

  # POST /cts
  # POST /cts.json
  def create
    @ct = Ct.new(ct_params)

    respond_to do |format|
      if @ct.save
        format.html { redirect_to @ct, notice: 'Ct was successfully created.' }
        format.json { render :show, status: :created, location: @ct }
      else
        format.html { render :new }
        format.json { render json: @ct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cts/1
  # PATCH/PUT /cts/1.json
  def update
    respond_to do |format|
      if @ct.update(ct_params)
        format.html { redirect_to @ct, notice: 'Ct was successfully updated.' }
        format.json { render :show, status: :ok, location: @ct }
      else
        format.html { render :edit }
        format.json { render json: @ct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cts/1
  # DELETE /cts/1.json
  def destroy
    @ct.destroy
    respond_to do |format|
      format.html { redirect_to cts_url, notice: 'Ct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ct
      @ct = Ct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ct_params
      params.require(:ct).permit(:title, :name, :description, :url)
    end
end
