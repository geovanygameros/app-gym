class Member < ActiveRecord::Base
  has_many :payments, dependent: :destroy

  #Genero
  GENDER_MAN = "Hombre"
  GENDER_WOMEN = "Mujer"

  MEMBER_GENDERS = {
      GENDER_MAN => true,
      GENDER_WOMEN => false
  }

end
