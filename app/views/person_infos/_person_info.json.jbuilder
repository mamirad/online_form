json.extract! person_info, :id, :name, :cnic, :age, :age, :gender, :address, :mobile, :apply_for, :area, :detail_area_research, :cv_upload, :created_at, :updated_at
json.url person_info_url(person_info, format: :json)
