module DocumentsHelper
  def simple_form_l(value)
    value ? I18n.l(value) : nil
  end
end
