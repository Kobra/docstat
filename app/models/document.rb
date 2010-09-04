class Document < ActiveRecord::Base
  belongs_to :status
  
  def status_name
    status.name if status
  end

  def simple_form_datetime(attrname)
    value = self.send(attrname)
    value && DateTime === value ? I18n.l(value) : nil
  end
end
