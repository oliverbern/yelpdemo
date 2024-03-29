class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  searchkick

  has_many :reviews

  validates :name, :address, :phone, :website, :image, presence: true
  validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
    message: "use format: (123) 456-7890" }

  validates :website, format: { with: /\Ahttps?:\/\/www.*\z/,
    message: "Website must start with http:// or https://" }




    

end
