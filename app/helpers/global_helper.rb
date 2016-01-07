module GlobalHelper
  def hostname
    @_hostname ||= %x("hostname").strip
  end
end
