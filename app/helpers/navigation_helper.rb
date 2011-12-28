module NavigationHelper
  def set_language
    url = request.path
  
    if params[:locale]
      params[:locale] == 'es' ? url.gsub('/es/', '/en/') : url.gsub('/en/', '/es/')
    end
  end
end