class MemberDecorator < ApplicationDecorator
  delegate_all

  def name
    h.content_tag(:small, "#{model.last_name_kana}　#{model.first_name_kana}") + h.tag(:br) + "#{model.last_name}　#{model.first_name}"
  end

  def gender
    if model.gender == "M"
      "男"
    else
      "女"
    end
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
