class CreateKeywordsPermissionForPanopticon < ActiveRecord::Migration
  class SupportedPermission < ActiveRecord::Base
    belongs_to :application, class_name: 'Doorkeeper::Application'
  end

  def up
    panopticon = ::Doorkeeper::Application.find_by_name("panopticon")
    if panopticon
      SupportedPermission.create!(application: panopticon, name: "keywords")
    end

    publisher = ::Doorkeeper::Application.find_by_name("publisher")
    if publisher
      SupportedPermission.create!(application: publisher, name: "keywords")
    end
  end
end
