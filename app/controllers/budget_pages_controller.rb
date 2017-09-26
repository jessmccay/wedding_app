class BudgetPagesController < ApplicationController
  before_action :set_budget_page, only: [:show, :edit, :update, :destroy]

  # GET /budget_pages
  # GET /budget_pages.json
  def index
    @budget_pages = BudgetPage.all
  end

  # GET /budget_pages/1
  # GET /budget_pages/1.json
  def show
  end

  # GET /budget_pages/new
  def new
    @budget_page = BudgetPage.new
  end

  # GET /budget_pages/1/edit
  def edit
  end

  # POST /budget_pages
  # POST /budget_pages.json
  def create
    @budget_page = BudgetPage.new(budget_page_params)

    respond_to do |format|
      if @budget_page.save
        format.html { redirect_to @budget_page, notice: 'Budget page was successfully created.' }
        format.json { render :show, status: :created, location: @budget_page }
      else
        format.html { render :new }
        format.json { render json: @budget_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_pages/1
  # PATCH/PUT /budget_pages/1.json
  def update
    respond_to do |format|
      if @budget_page.update(budget_page_params)
        format.html { redirect_to @budget_page, notice: 'Budget page was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_page }
      else
        format.html { render :edit }
        format.json { render json: @budget_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_pages/1
  # DELETE /budget_pages/1.json
  def destroy
    @budget_page.destroy
    respond_to do |format|
      format.html { redirect_to budget_pages_url, notice: 'Budget page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_page
      @budget_page = BudgetPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_page_params
      params.require(:budget_page).permit(:budget, :amount_spent, :tasks_id)
    end
end
