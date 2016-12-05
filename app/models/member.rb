class Member < ActiveRecord::Base
  has_many :payments, dependent: :destroy

  has_attached_file :cover, styles: { thumb: "400x400"}, default_url: "publ/system/members/covers/default_cover/default-avatar_:style.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  #Genero
  GENDER_MAN = "Hombre"
  GENDER_WOMEN = "Mujer"

  MEMBER_GENDERS = {
      GENDER_MAN => true,
      GENDER_WOMEN => false
  }


end
