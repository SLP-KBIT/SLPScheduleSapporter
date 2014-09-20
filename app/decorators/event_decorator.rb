class EventDecorator < Draper::Decorator
  delegate_all

  def short_content
    h.truncate(object.content, lenght: 30, ommision: "...")
  end

  def user_name
    object.user.name || "未設定"
  end

  def content
    h.raw(object.content.gsub(/\n/, "<br>"))
  end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

end
