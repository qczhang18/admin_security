# So called proxy controller to

class AdminController<ApplicationController
  before_action :authenticate_admin!
  layout 'admin'  # replace default application.html.erb layout
end
