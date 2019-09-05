class PersonInfo < ApplicationRecord
	has_many :person_experiences,  :dependent => :destroy
	 accepts_nested_attributes_for :person_experiences
	 validates_associated :person_experiences

mount_uploader :cv_upload, CvUploadUploader
	  # validate :validate_experience

	 validates :cnic, numericality: true
	  validates :age, numericality: { greater_than: 10 }
	   validates :mobile, numericality: { greater_than: 10 }
	   validates :cnic, presence: { greater_than: 10 }
	     validates :mobile, uniqueness: true
	     

	   validates :name, presence: true
	   validates :age, presence: true
	   validates :gender, presence: true
	   validates :address, presence: true
	   validates :mobile, presence: true

	   validates :apply_for, presence: true
	   validates :area, presence: true
	   validates :detail_area_research, presence: true
	   validates :cv_upload, presence: true
		
	   def validate_experience
	   end   
  	

end
