# So called proxy controller to

class UserController<ApplicationController
  before_action :authenticate_user!
  layout 'user'  # replace default application.html.erb layout
end
