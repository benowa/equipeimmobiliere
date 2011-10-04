class PdfController < ApplicationController
  skip_before_filter :authorize
  def index
    respond_to do |format|
     format.pdf { render :pdf => "contents" }
    end
  end

end
