task :check_date => :environment do
  Alert.check_alert_dates
end
