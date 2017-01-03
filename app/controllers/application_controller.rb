class ApplicationController < ActionController::Base
  # Before action
  skip_around_action :set_locale_from_url
  before_action :set_locale

  protect_from_forgery with: :exception

  include SessionsHelper

  def set_locale
    browser_locale = (request.env['HTTP_ACCEPT_LANGUAGE'] || 'fr').scan(/^[a-z]{2}/).first

    if I18n.available_locales.map(&:to_s).include? browser_locale
      I18n.locale = browser_locale
    else
      I18n.locale = I18n.default_locale
    end
  end
end
