class MainController< ApplicationController
  def index
    flash.now[:notice]="Logged in successful"
    flash.now[:alert]="Invalid email and password"
  end
end

