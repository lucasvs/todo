 
class TaskMailer < ActionMailer::Base
 def demo_mail(user,task)
 	        @task = task
            mail(:from => "Testmail@demo.com",
                     :to => user.email,
                     :subject => "Greet User")
            end
end
