class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :lastName,      :validate => true
  attribute :company,      :validate => true
  attribute :jobtitle,      :validate => true
  attribute :phone,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Cliente Potencial GlobalEventsDMC.com",
      :to => "contactus@globaleventsdmc.com",
      :from => %("#{name}" <#{email}>),
      :from_email=>"contactus@globalevents.com",
      :from_name=>"GlobalEvents"
        

    }
  end
end