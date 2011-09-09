module ApplicationHelper

  def format_price(amount)
    %Q{&pound;#{sprintf "%.2f", amount}}
  end

end
