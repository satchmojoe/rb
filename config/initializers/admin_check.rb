# Check to make sure at least one user is set as site admin
if User.where(priv_administer: true).length > 0
  RubyFormsEngine::Application.config.admin_set = true
  # TO-DO: implement redirect to set site admin
end
