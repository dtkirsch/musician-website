class Page < ActiveRecord::Base
  has_paper_trail
  attr_accessible :content, :link, :name, :public
end
