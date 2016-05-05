DrHealthcheck.add do
  if Time.new.sec % 2 != 0
    Rails.logger.error "Healthcheck failed!"
    false
  else
    true
  end
end
