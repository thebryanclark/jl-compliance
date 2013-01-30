module ApplicationHelper
  def icon(icon_name)
    content_tag :span, ' ', class: "font-awesome icon-#{icon_name}"
  end

  def icon_if(boolean_value, true_icon, false_icon)
    icon(boolean_value ? true_icon : false_icon)
  end

  def check_icon(boolean_value)
    icon_if(boolean_value, 'check', 'check-empty')
  end
end
