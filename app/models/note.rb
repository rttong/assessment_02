class Note < ActiveRecord::Base
  validates_presence_of :title, :content, {:message => "Missing required field."}
end