class Post < ActiveRecord::Base
  before_save { |p| p.posted_on ||= Time.now }
end
