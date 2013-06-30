helpers do

  def confirm_delete
    session[:delete] = true if params[:delete]
  end
  
end
