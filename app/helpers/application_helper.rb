module ApplicationHelper
  def print_date(date)
    if date == Date.today
      content_tag :span, 'Today', class: 'today-badge'
    else
      date.strftime('%a, %b %d %Y')
    end
  end
end
