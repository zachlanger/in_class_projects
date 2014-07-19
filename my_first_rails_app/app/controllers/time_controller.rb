class TimeController < ApplicationController
  def now
    @time = Time.zone.now.strftime("The current time is %a, %d %b %Y %T UTC %Z")
  end
end
