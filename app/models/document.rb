class Document < ActiveRecord::Base
  belongs_to :status
  
  def status_name
    status.name if status
  end
end
