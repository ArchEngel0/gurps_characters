class ApplicationController < ActionController::Base
  helper_method :link_spells

  def link_spells(text)
    return "" if text.nil?
    Spell.all.sort_by { |spell| -spell.spell.length }.each do |spell|
      text.gsub!(/\b#{spell.spell}\b/, "<a href='/spells/#{spell.id}'>#{spell.spell}</a>")
    end
    text.html_safe
  end
end
