class MainController< ApplicationController
  def index
    puts  :alert[0]
    flash.now[:notice]="Logged in successful"
    flash.now[:alert]="Invalid email and password"

  end 
end

 