class DisabilityToolsController < ApplicationController
  before_action :set_disability_tool, only: [:show, :edit, :update, :destroy]

  # GET /disability_tools
  # GET /disability_tools.json
  def index
    @disability_tools = DisabilityTool.all
  end

  # GET /disability_tools/1
  # GET /disability_tools/1.json
  def show
  end

  # GET /disability_tools/new
  def new
    @disability_tool = DisabilityTool.new
  end

  # GET /disability_tools/1/edit
  def edit
  end
  
  def new2
  end
  
  # POST GENERATION
    
  def generate
     @disability_tool2 = DisabilityTool.find(params[:id])
     @testVar = @disability_tool2.firstname
     @severityVar = @disability_tool2.severity - 3
     @testString = "this is me"
     if @testVar == 'John'
     	@testString = 'justkidding'
     end

  end
  # POST /disability_tools
  # POST /disability_tools.json
  def create
    @disability_tool = DisabilityTool.new(disability_tool_params)

    respond_to do |format|
      if @disability_tool.save
        format.html { redirect_to @disability_tool, notice: 'Disability tool was successfully created.' }
        format.json { render :show, status: :created, location: @disability_tool }
      else
        format.html { render :new }
        format.json { render json: @disability_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disability_tools/1
  # PATCH/PUT /disability_tools/1.json
  def update
    respond_to do |format|
      if @disability_tool.update(disability_tool_params)
        format.html { redirect_to @disability_tool, notice: 'Disability tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @disability_tool }
      else
        format.html { render :edit }
        format.json { render json: @disability_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disability_tools/1
  # DELETE /disability_tools/1.json
  def destroy
    @disability_tool.destroy
    respond_to do |format|
      format.html { redirect_to disability_tools_url, notice: 'Disability tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disability_tool
      @disability_tool = DisabilityTool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disability_tool_params
      params.require(:disability_tool).permit(:notes, :condition, :severity, :firstname, :lastname)
    end
end
