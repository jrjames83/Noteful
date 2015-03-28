class Note < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }
  
# def preview
 #   @note = "#{Note.find(params[:id]).(0...99)}..."
 #end
  
  def preview #get the content of the note being used or looked up
  self.content.slice(0..100) << "...(readmore)"
  end
  
end
