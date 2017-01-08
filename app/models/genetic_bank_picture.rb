class GeneticBankPicture < ActiveRecord::Base
    belongs_to :genetic_bank


    has_attached_file :picture, :path => ":rails_root/public/assets/images/geneticBank/:filename",
    :url => "/assets/images/geneticBank/:filename"
#    validates_attachment_presence :picture
#    validates :picture, attachment_presence: true
    validates :picture, presence:{ message:"Obligatory"}, :allow_blank => false
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

end
