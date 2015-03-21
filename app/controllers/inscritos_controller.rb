class InscritosController < ApplicationController
  before_action :set_inscrito, only: [:show, :edit, :update, :destroy]
  before_action :is_logged, except: [:index, :new, :create, :ok]

  # GET /inscritos
  # GET /inscritos.json
  def index
    redirect_to new_inscrito_path
  end

  # GET /inscritos/1
  # GET /inscritos/1.json
  def show
  end

  # GET /inscritos/new
  def new
    @inscrito = Inscrito.new
  end

  # GET /inscritos/1/edit
  def edit
  end

  # POST /inscritos
  # POST /inscritos.json
  def create
    @inscrito = Inscrito.new(inscrito_params)

    respond_to do |format|
      if @inscrito.save
        format.html { redirect_to ok_path, notice: 'Inscrito com sucesso' }
      else
        format.html { render :new }
      end
    end
  end

  def ok
  end

  # PATCH/PUT /inscritos/1
  # PATCH/PUT /inscritos/1.json
  def update
    respond_to do |format|
      if @inscrito.update(inscrito_params)
        format.html { redirect_to @inscrito, notice: 'Inscrito was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /inscritos/1
  # DELETE /inscritos/1.json
  def destroy
    @inscrito.destroy
    respond_to do |format|
      format.html { redirect_to inscritos_url, notice: 'Inscrito was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrito
      @inscrito = Inscrito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscrito_params
      params.require(:inscrito).permit(:tipo, :nome, :email, :sexo, :nascimento, :cpf, :equipe, :modalidade, :termo_responsabilidade, :camiseta)
    end

    def is_logged
      respond_to do |format|
        format.html { redirect_to '/404', :status => :not_found }
      end
    end
end
