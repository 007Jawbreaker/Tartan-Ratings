class Mailer < ActionMailer::Base
  default from: "tartan.ratings15@gmail.com"

  def signup_email(user)
  	mail(to: user.email ,

  		body: "verification link: <a href='http://localhost:3000/verify/GTGTHTH' > To verify click here </a>" ,

  		content_type: "text/html",
  		subject: " Tartan Ratings Verification ")

  end
end
