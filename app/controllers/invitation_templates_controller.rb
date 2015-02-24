class InvitationTemplatesController < ApplicationController
  before_action :set_invitation_template, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /invitation_templates
  # GET /invitation_templates.json
  def index
    @invitation_templates = InvitationTemplate.all
  end

  # GET /invitation_templates/1
  # GET /invitation_templates/1.json
  def show
  end

  # GET /invitation_templates/new
  def new
    @invitation_template = InvitationTemplate.new
  end

  # GET /invitation_templates/1/edit
  def edit
  end

  # POST /invitation_templates
  # POST /invitation_templates.json
  def create
    @invitation_template = InvitationTemplate.new(invitation_template_params)

    respond_to do |format|
      if @invitation_template.save
        format.html { redirect_to @invitation_template, notice: 'Invitation template was successfully created.' }
        format.json { render :show, status: :created, location: @invitation_template }
      else
        format.html { render :new }
        format.json { render json: @invitation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invitation_templates/1
  # PATCH/PUT /invitation_templates/1.json
  def update
    respond_to do |format|
      if @invitation_template.update(invitation_template_params)
        format.html { redirect_to @invitation_template, notice: 'Invitation template was successfully updated.' }
        format.json { render :show, status: :ok, location: @invitation_template }
      else
        format.html { render :edit }
        format.json { render json: @invitation_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invitation_templates/1
  # DELETE /invitation_templates/1.json
  def destroy
    @invitation_template.destroy
    respond_to do |format|
      format.html { redirect_to invitation_templates_url, notice: 'Invitation template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation_template
      @invitation_template = InvitationTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invitation_template_params
      params.require(:invitation_template).permit(:subject, :body)
    end
end
