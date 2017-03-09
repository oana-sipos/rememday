class Entry < ActiveRecord::Base

  def sleep_duration
    if !self.sleep_end.nil? && !self.sleep_start.nil?
      duration = ((self.sleep_end-self.sleep_start) / 1.hour).round
      if duration <0 # This happens is starting hour is before midnight
        duration = duration + 24
      end
      return duration
    end
  end

  def as_json(*)
    json_keys = [:name, :date, :memory, :mood, :weight, :facebook_id, :email]

    json_keys.each_with_object({}) do |key, hash|
      hash[key] = self.send(key)
    end
  end

end
