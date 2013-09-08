module ApplicationHelper

  ALERT_DIV = {
      notice: 'alert alert-info',
      success: 'alert alert-success',
      error: 'alert alert-danger',
      alert: 'alert alert-danger'
  }

  def flash_messages
    flash_messages = []
    flash.each do |type, message|
      next if message.blank?

      Array(message).each do |msg|

        text = %Q[<div class="alert-block "> <div class="fade in #{ALERT_DIV[type]}">
          <button class="close" data-dismiss="alert">X</button>
            <p>#{msg}</p>
          </div>
        </div>
        ]
        flash_messages << text if msg
      end
    end
    flash_messages.join("\n").html_safe
  end

  def error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      count: resource.errors.count,
                      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-block alert-danger">
      <h2>#{sentence}</h2>
      <ul class="list-unstyled">#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

end
