class EmailAccountsController < ApplicationController
  before_action :set_email_account, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  # GET /email_accounts
  # GET /email_accounts.json
  def index
    @email_accounts = current_user.email_accounts.all
  end

  # GET /email_accounts/1
  # GET /email_accounts/1.json
  def show
  end

  # GET /email_accounts/new
  def new
    @email_account = current_user.email_accounts.new
  end

  # GET /email_accounts/1/edit
  def edit
  end

  # POST /email_accounts
  # POST /email_accounts.json
  def create
    @email_account = current_user.email_accounts.new(email_account_params)

    respond_to do |format|
      if @email_account.save
        format.html { redirect_to @email_account, notice: 'Email account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @email_account }
      else
        format.html { render action: 'new' }
        format.json { render json: @email_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_accounts/1
  # PATCH/PUT /email_accounts/1.json
  def update
    respond_to do |format|
      if @email_account.update(email_account_params)
        format.html { redirect_to @email_account, notice: 'Email account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @email_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_accounts/1
  # DELETE /email_accounts/1.json
  def destroy
    @email_account.destroy
    respond_to do |format|
      format.html { redirect_to email_accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_account
      @email_account = current_user.email_accounts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_account_params
      params.require(:email_account).permit(:server, :port, :ssl, :username, :password)
    end
end
