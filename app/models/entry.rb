class Entry < ActiveRecord::Base

  def the_date
    date
    # self.date
  end

  def facebook_id
    if name == 'Oana'
      facebook_id = 1370813229
    elsif name == 'Tassos'
      facebook_id = 534606643
    else
      ''
    end
  end

end
