#encoding:utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #include Pundit
  protect_from_forgery

  #filter_parameter_logging :password, :password_confirmation # there are underscores :-|

  helper_method :current_user_session, :current_user, :current_plant, :current_area, :fullname

  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def current_plant
    return @current_plant if defined?(@current_plant)
    @current_plant = @current_user.employee.area.plant_id
  end

  def current_area
    return @current_area if defined?(@current_area)
    @current_area = @current_user.employee.area_id
  end
  def fullname
    return @fullname if defined?(@fullname)
    @fullname = @current_user.employee.name + ' ' + @current_user.employee.lastname + ' ' + @current_user.employee.second_lastname
  end

  def require_user
    logger.debug "ApplicationController::require_user"
    unless current_user
      store_location
      flash[:notice] = "Necesita entrar como usuario para tener acceso a la pagina"
      redirect_to new_user_session_url
      return false
    end
  end

  def require_no_user
    logger.debug "ApplicationController::require_no_user"
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      # redirect_to home_index_path
      return false
    end
  end

  def store_location
    #session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
