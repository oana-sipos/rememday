class Entry < ActiveRecord::Base

  def the_date
    date
    # self.date
  end

  def facebook_id
    # case name
    # when /oana/i
    #   '1370813229'
    # when /tassos/i
    #   '534606643'
    # end
  end

  def email
    case name
    when /oana/i
      'oanasipos@gmail.com'
    when /tassos/i
      'tassos.natsakis@kuleuven.be'
    end
  end

  def as_json(*)
    json_keys = [:name, :date, :memory, :mood, :weight, :facebook_id, :email]

    json_keys.each_with_object({}) do |key, hash|
      hash[key] = self.send(key)
    end
  end

end
