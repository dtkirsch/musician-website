class Page < ActiveRecord::Base
  attr_accessible :content, :link, :name, :public
end
