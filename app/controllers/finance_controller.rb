class FinanceController < ApplicationController
  skip_before_filter :authorize
  def new
    @client = Client.new

  end

  def create
      respond_to do |format|
          format.html
          format.pdf {render :pdf => "#{@client.name}", :template => "pdf/index.pdf"}
      end
  end

  def destroy
  end

end
