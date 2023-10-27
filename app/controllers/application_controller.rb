class ApplicationController < ActionController::Base
  helper_method :link_spells

  def link_spells(text)
    return "" if text.nil?
    Spell.all.each do |spell|
      text.gsub!(spell.spell, "<a href='/spells/#{spell.id}'>#{spell.spell}</a>")
    end
    text.html_safe
  end
end
