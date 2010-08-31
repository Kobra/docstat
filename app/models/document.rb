class Document < ActiveRecord::Base
  belongs_to :status
end

def status_name
  status.name if status
end
