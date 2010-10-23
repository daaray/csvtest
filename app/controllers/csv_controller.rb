require 'fastercsv'

class CsvController < ApplicationController
  def import
  end

  def upload    
    #TODO...Reenactment in form
    r_id = 1
    file = params[:upload][:csv]
    FasterCSV.parse(file, :headers => true) do |row|
      char_name = row[0]
      character = Character.find_or_create_by_name(char_name)
      c_id = character.id      
      content = row[1]
      postdate = row[2]
      post = ScheduledPost.new(:content => content, :postdate => postdate, :reenactment_id => r_id, :character_id => c_id)
      post.save
    end  
    redirect_to scheduled_posts_url
  end
#  def upload
    # While under development, just respond by rendering some in-line text.
    # Send back the request parameters in JSON (JavaScript Object Notation)
    # format, i.e. something reasonably easy to parse with the human eye.
#    render :text => params.to_json
#  end

end
