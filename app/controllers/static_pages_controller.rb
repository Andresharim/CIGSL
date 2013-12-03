class StaticPagesController < ApplicationController
  before_action :set_static_page, only: [:show, :edit, :update, :destroy]

  # GET /static_pages
  # GET /static_pages.json
  def index
    @static_pages = StaticPage.all
  end

  # GET /static_pages/1
  # GET /static_pages/1.json
  def show
  end

  # GET /static_pages/new
  def new
    @static_page = StaticPage.new
  end

  # GET /static_pages/1/edit
  def edit
  end

  # POST /static_pages
  # POST /static_pages.json
  def create
    @static_page = StaticPage.new(static_page_params)

    respond_to do |format|
      if @static_page.save
        format.html { redirect_to @static_page, notice: 'Static page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @static_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @static_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /static_pages/1
  # PATCH/PUT /static_pages/1.json
  def update
    respond_to do |format|
      if @static_page.update(static_page_params)
        format.html { redirect_to @static_page, notice: 'Static page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @static_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /static_pages/1
  # DELETE /static_pages/1.json
  def destroy
    @static_page.destroy
    respond_to do |format|
      format.html { redirect_to static_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_static_page
      @static_page = StaticPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def static_page_params
      params.require(:static_page).permit(:title, :body, :show_in_nav)
    end
end
