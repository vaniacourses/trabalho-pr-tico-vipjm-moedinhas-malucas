class TransacaosController < ApplicationController
  before_action :set_transacao, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /transacaos or /transacaos.json
  def index
    @transacaos = Transacao.all
  end

  # GET /transacaos/1 or /transacaos/1.json
  def show
  end

  # GET /transacaos/new
  def new
    @transacao = Transacao.new
  end

  # GET /transacaos/1/edit
  def edit
  end

  # POST /transacaos or /transacaos.json
  def create
    @transacao = current_user.transacaos.build(transacao_params)
  
    respond_to do |format|
      if @transacao.save
        format.html { redirect_to @transacao, notice: 'Transacao was successfully created.' }
        format.json { render :show, status: :created, location: @transacao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end  

  # PATCH/PUT /transacaos/1 or /transacaos/1.json
  def update
    respond_to do |format|
      if @transacao.update(transacao_params)
        format.html { redirect_to transacao_url(@transacao), notice: "Transacao was successfully updated." }
        format.json { render :show, status: :ok, location: @transacao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacaos/1 or /transacaos/1.json
  def destroy
    @transacao.destroy!

    respond_to do |format|
      format.html { redirect_to transacaos_url, notice: "Transacao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transacao
      @transacao = Transacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transacao_params
      params.require(:transacao).permit(:tipo, :valor, :dataHora, :categoria, :user_id, :account_id)
    end
end
