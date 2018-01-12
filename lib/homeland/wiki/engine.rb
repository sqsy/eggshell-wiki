module Eggshell
  module Wiki
    class Engine < ::Rails::Engine
      isolate_namespace Eggshell::Wiki

      initializer 'eggshell.wiki.init' do |app|
        if Setting.has_module?(:wiki)
          Eggshell.register_plugin do |plugin|
            plugin.name              = 'wiki'
            plugin.display_name      = 'Wiki'
            plugin.description       = Eggshell::Wiki::DESCRIPTION
            plugin.version           = Eggshell::Wiki::VERSION
            plugin.navbar_link       = true
            plugin.user_menu_link    = false
            plugin.root_path         = "/wiki"
            plugin.admin_path        = "/admin/wiki"
            plugin.admin_navbar_link = true
            plugin.spec_path         = config.root.join('spec')
          end

          app.routes.prepend do
            mount Eggshell::Wiki::Engine, at: '/'
          end

          app.config.paths["db/migrate"].concat(config.paths["db/migrate"].expanded)
        end
      end
    end
  end
end
