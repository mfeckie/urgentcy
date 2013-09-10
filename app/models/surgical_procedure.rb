class SurgicalProcedure < ActiveRecord::Base
  has_paper_trail

  validates_uniqueness_of :name
end
