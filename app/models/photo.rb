class Photo < ActiveRecord::Base

  belongs_to :photoable, polymorphic: true, inverse_of: :photos
  attr_accessible :photoable_id
  attr_accessible :photoable_type

  attr_accessible   :caption
  attr_accessible   :image
  has_attached_file :image, 
                    :styles => { :medium => "300x300>", :large => "600x600>" }  

  attr_accessor   :delete_image
  attr_accessible :delete_image
  before_validation do
    if self.delete_image == '1'
      self.image.clear
      self.caption.clear
    end
  end

end
