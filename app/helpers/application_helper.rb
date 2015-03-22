module ApplicationHelper
  def full_title(page_title = nil)
    if page_title.present?
      "Rapid Turtle - #{page_title}"
    else
      "Rapid Turtle"
    end
  end
end
