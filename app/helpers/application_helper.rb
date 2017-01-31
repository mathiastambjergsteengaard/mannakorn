module ApplicationHelper
  def format_decimal_number(number)
    number.to_s.sub('.',',')
  end
end
