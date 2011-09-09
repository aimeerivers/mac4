module ApplicationHelper

  def format_price(amount)
    %Q{&pound;#{sprintf "%.2f", amount}}
  end

  def start_of_month(date)
    date - (date.strftime('%d').to_i - 1)
  end

end
