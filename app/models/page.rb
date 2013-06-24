class Page < ActiveRecord::Base
  has_paper_trail
  attr_accessible :content, :link, :name, :public

  def set_home
    ActiveRecord::Base.transaction do
      Page.where(:home => true).each do |page|
        page.home = false
        page.save!
      end
      self.home = true
      self.save!
    end
  end
end
