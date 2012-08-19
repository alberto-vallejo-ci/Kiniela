module ApplicationHelper
    def active_menu(section)
        sections = { dashboard:'dashboard', teams:'teams', games:'games' }
        'active' if sections[section].include? controller_name
    end
end
