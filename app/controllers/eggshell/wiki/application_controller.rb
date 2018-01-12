module Eggshell::Wiki
  class ApplicationController < ::ApplicationController
    helper ApplicationHelper

    def current_ability
      @current_ability ||= Eggshell::Wiki::Ability.new(current_user)
    end
  end
end
