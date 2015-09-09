class UserExportPresenter
  attr_accessor :applications

  def initialize(applications)
    @applications = applications
  end

  def self.header_row(applications)
    [
      'Name',
      'Email',
      'Role',
      'Organisation',
      'Sign-in count',
      'Last sign-in',
      'Created',
      'Status',
    ].concat applications.map &:name
  end

  def row(user)
    [
      user.name,
      user.email,
      user.role.humanize,
      user.organisation.try(:name),
      user.sign_in_count,
      user.current_sign_in_at.try(:to_formatted_s, :db),
      user.created_at.try(:to_formatted_s, :db),
      user.status.humanize,
    ].concat(app_permissions(user))
  end

  def app_permissions(user)
    applications.map do |application|
      perms = user.permissions_for(application)
      perms.sort.join(', ') if perms.any?
    end
  end
end
