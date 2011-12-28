class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!, :set_locale
  
  def set_locale
    I18n.locale = (params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)) ? params[:locale].to_sym : check_locale_from_accept_language_header
  end
  
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end

  private
    def check_locale_from_accept_language_header
      I18n.locale = request.env['HTTP_ACCEPT_LANGUAGE'] ? request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first : I18n.default_locale
    end
 
  private
    def after_sign_out_path_for(resource_or_scope)
      scope = Devise::Mapping.find_scope!(resource_or_scope)
      send(:"new_#{scope}_session_path")
    end
    
end
