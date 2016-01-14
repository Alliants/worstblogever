class Post < ActiveRecord::Base
  before_save { |p| p.posted_on ||= Time.now }

  def formatted_body
    @body_formatter ? @body_formatter.call(body) : body
  end

  def set_body_formatter(&block)
    @body_formatter = block
  end
end
