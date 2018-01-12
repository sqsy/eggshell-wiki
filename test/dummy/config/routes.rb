Rails.application.routes.draw do
  mount Eggshell::Wiki::Engine => "/eggshell-wiki"
end
