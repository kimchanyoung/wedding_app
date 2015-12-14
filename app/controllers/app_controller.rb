class AppController < ApplicationController
  before_action :require_login, only: [:savethedate, :rsvp, :registry]

  def login
    today = DateTime.now
    wedding_day = Date.parse "2016-07-30"
    @date_diff = (wedding_day - today).to_i
  end

  def login_attempt
    if request.xhr?

    else
      if params[:pword_attempt] == 'doughnuts'
        cookies[:logged_in] = { value: true, expires: 1.day.from_now.utc}
        redirect_to savethedate_path
      else
        redirect_to login_path
      end
    end
  end

  def savethedate
  end

  def rsvp
  end

  def registry
  end

  def thankyou
  end

  private

  def require_login
    redirect_to login_path unless cookies[:logged_in]
  end
end
