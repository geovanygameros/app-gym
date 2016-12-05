class Payment < ActiveRecord::Base
  belongs_to :member

      MEMBERSHIP_PESAS = "Pesas"
      MEMBERSHIP_SPINNING = "Spinning"
      MEMBERSHIP_CROSSFIT = "Crossfit"
      MEMBERSHIP_BOX = "Box"
      MEMBERSHIP_ALL = "Pase completo"

  MEMBERSHIP = {
      MEMBERSHIP_PESAS => 1,
      MEMBERSHIP_SPINNING => 2,
      MEMBERSHIP_CROSSFIT => 3,
      MEMBERSHIP_BOX => 4,
      MEMBERSHIP_ALL => 5
  }

  MEMBERSHIP_PRICE = {
    MEMBERSHIP_PESAS => 350,
    MEMBERSHIP_SPINNING => 250,
    MEMBERSHIP_CROSSFIT => 390,
    MEMBERSHIP_BOX => 380,
    MEMBERSHIP_ALL => 450
  }

end
