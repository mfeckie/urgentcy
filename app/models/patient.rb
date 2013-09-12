class Patient < ActiveRecord::Base
  has_paper_trail on: [:update, :destroy]

  def age
    ((Time.now.to_time - date_of_birth.to_time) / 1.years).to_i
  end

end