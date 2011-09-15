class FinanceController < ApplicationController
  skip_before_filter :authorize
  def new
    @client = Client.new
  end

  def create
  end

  def destroy
  end

end
