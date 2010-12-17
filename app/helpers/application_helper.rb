# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def to_megabyte byte
    #a = byte.to_f / 1.megabyte
    #return (a*100).ceil.quo(100).to_f.to_s + "MB"
    return number_to_human_size( byte )
  end

  def to_japan_time time
    time.strftime("%H:%M:%S %m/%d/%Y")
  end

end
