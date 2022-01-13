class ProtosController < ApplicationController
  before_action :set_proto, only: %i[ show edit update destroy ]

  # GET /protos or /protos.json
  def index
    @protos = Proto.all
  end

  # GET /protos/1 or /protos/1.json
  def show
  end

  # GET /protos/new
  def new
    @proto = Proto.new
  end

  # GET /protos/1/edit
  def edit
  end

  # POST /protos or /protos.json
  def create
    @proto = Proto.new(proto_params)

    respond_to do |format|
      if @proto.save
        format.html { redirect_to proto_url(@proto), notice: "Proto was successfully created." }
        format.json { render :show, status: :created, location: @proto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protos/1 or /protos/1.json
  def update
    respond_to do |format|
      if @proto.update(proto_params)
        format.html { redirect_to proto_url(@proto), notice: "Proto was successfully updated." }
        format.json { render :show, status: :ok, location: @proto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protos/1 or /protos/1.json
  def destroy
    @proto.destroy

    respond_to do |format|
      format.html { redirect_to protos_url, notice: "Proto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proto
      @proto = Proto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proto_params
      params.require(:proto).permit(:title, :user_id)
    end
end
