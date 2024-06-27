class RelatorioFinanceirosController < ApplicationController
  before_action :set_relatorio_financeiro, only: %i[ show edit update destroy ]

  # GET /relatorio_financeiros or /relatorio_financeiros.json
  def index
    @relatorio_financeiros = RelatorioFinanceiro.all
  end

  # GET /relatorio_financeiros/1 or /relatorio_financeiros/1.json
  def show
  end

  # GET /relatorio_financeiros/new
  def new
    @relatorio_financeiro = RelatorioFinanceiro.new
  end

  # GET /relatorio_financeiros/1/edit
  def edit
  end

  # POST /relatorio_financeiros or /relatorio_financeiros.json
  def create
    @relatorio_financeiro = RelatorioFinanceiro.new(relatorio_financeiro_params)

    respond_to do |format|
      if @relatorio_financeiro.save
        format.html { redirect_to relatorio_financeiro_url(@relatorio_financeiro), notice: "Relatorio financeiro was successfully created." }
        format.json { render :show, status: :created, location: @relatorio_financeiro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relatorio_financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_financeiros/1 or /relatorio_financeiros/1.json
  def update
    respond_to do |format|
      if @relatorio_financeiro.update(relatorio_financeiro_params)
        format.html { redirect_to relatorio_financeiro_url(@relatorio_financeiro), notice: "Relatorio financeiro was successfully updated." }
        format.json { render :show, status: :ok, location: @relatorio_financeiro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relatorio_financeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_financeiros/1 or /relatorio_financeiros/1.json
  def destroy
    @relatorio_financeiro.destroy!

    respond_to do |format|
      format.html { redirect_to relatorio_financeiros_url, notice: "Relatorio financeiro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_financeiro
      @relatorio_financeiro = RelatorioFinanceiro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorio_financeiro_params
      params.require(:relatorio_financeiro).permit(:transacoes_id)
    end
end
