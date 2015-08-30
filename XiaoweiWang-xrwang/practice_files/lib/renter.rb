class Renter
  attr_accessor :credit_score, :salary, :renter_name

  def initialize (credit_score,salary,renter_name)
    @credit_score=credit_score
    @salary = salary
    @renter_name = renter_name
  end

  def to_s
    "renter #{renter_name} has #{credit_score} score"
  end

end
