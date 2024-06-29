class MetaFinanceirasController < ApplicationController
  before_action :set_meta_financeira, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /meta_financeiras or /meta_financeiras.json
  def index
    @meta_financeiras = current_user.meta_financeiras
  end

  # GET /meta_financeiras/1 or /meta_financeiras/1.json
  def show
  end

  # GET /meta_financeiras/new
  def new
    @meta_financeira = MetaFinanceira.new
  end

  # GET /meta_financeiras/1/edit
  def edit
  end

  # POST /meta_financeiras or /meta_financeiras.json
  def create
    @meta_financeira = current_user.meta_financeiras.build(meta_financeira_params)
  
    respond_to do |format|
      if @meta_financeira.save
        format.html { redirect_to @meta_financeira, notice: 'meta_financeira was successfully created.' }
        format.json { render :show, status: :created, location: @meta_financeira }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meta_financeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meta_financeiras/1 or /meta_financeiras/1.json
  def update
    respond_to do |format|
      if @meta_financeira.update(meta_financeira_params)
        format.html { redirect_to meta_financeira_url(@meta_financeira), notice: "Meta financeira was successfully updated." }
        format.json { render :show, status: :ok, location: @meta_financeira }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meta_financeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meta_financeiras/1 or /meta_financeiras/1.json
  def destroy
    @meta_financeira.destroy!

    respond_to do |format|
      format.html { redirect_to meta_financeiras_url, notice: "Meta financeira was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meta_financeira
      @meta_financeira = MetaFinanceira.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meta_financeira_params
      params.require(:meta_financeira).permit(:nome, :descricao, :valor, :prazo, :user_id)
    end
end
