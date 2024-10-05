class SelectedTagsController < ApplicationController
  before_action :set_selected_tag, only: %i[ show edit update destroy ]

  # GET /selected_tags or /selected_tags.json
  def index
    @selected_tags = SelectedTag.all
  end

  # GET /selected_tags/1 or /selected_tags/1.json
  def show
  end

  # GET /selected_tags/new
  def new
    @selected_tag = SelectedTag.new
  end

  # GET /selected_tags/1/edit
  def edit
  end

  # POST /selected_tags or /selected_tags.json
  def create
    @selected_tag = SelectedTag.new(selected_tag_params)

    respond_to do |format|
      if @selected_tag.save
        format.html { redirect_to @selected_tag, notice: "Selected tag was successfully created." }
        format.json { render :show, status: :created, location: @selected_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @selected_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selected_tags/1 or /selected_tags/1.json
  def update
    respond_to do |format|
      if @selected_tag.update(selected_tag_params)
        format.html { redirect_to @selected_tag, notice: "Selected tag was successfully updated." }
        format.json { render :show, status: :ok, location: @selected_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @selected_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selected_tags/1 or /selected_tags/1.json
  def destroy
    @selected_tag.destroy!

    respond_to do |format|
      format.html { redirect_to selected_tags_path, status: :see_other, notice: "Selected tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selected_tag
      @selected_tag = SelectedTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def selected_tag_params
      params.require(:selected_tag).permit(:id, :tag_id, :collection_id)
    end
end
