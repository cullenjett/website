module ApplicationHelper
  def print_date(date)
    if date == Date.today
      content_tag :span, 'Today', class: 'today-badge'
    elsif date == Date.yesterday
      content_tag :span, 'Yesterday', class: 'yesterday-badge'
    elsif date > 1.week.ago
      date.strftime('%A')
    else
      date.strftime('%a, %b %d')
    end
  end
end
