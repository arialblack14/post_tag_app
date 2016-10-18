module ApplicationHelper
  # Solve the problem of missing page title
  def full_title(page_title)
    base_title = "Blog App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
