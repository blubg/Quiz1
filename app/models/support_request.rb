class SupportRequest < ActiveRecord::Base
#Validate that the requirements are an e-mail, a name, and a support request in
#order to proceed

  validates :email, presence: true
  validates :name, presence: true
end
