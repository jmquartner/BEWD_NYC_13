class Person
  attr_accessor :renter_name, :renter_credit_score, :renter_gender

  def initialize(renter_name, renter_credit_score, renter_gender)
    @renter_name = renter_name
    @renter_credit_score = renter_credit_score
    @renter_gender = renter_gender
  end
end
