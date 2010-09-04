class DocumentsController < InheritedResources::Base
  def update
    update!{ documents_url }
  end
end
