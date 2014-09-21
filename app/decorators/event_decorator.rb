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

  def start_at
    h.l object.start_at if object.start_at
  end

  def end_at
    h.l object.end_at if object.end_at
  end
end
