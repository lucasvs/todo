 namespace :duedate do
 	desc "This is to send an email to users"
 	task(:mail_users => :environment) do
 		
 		t =        Task.find(:first, :conditions => ['date <= ? and move <> 1 ',  DateTime.now])                 
 		t.move = 1
 		t.save
 		puts t.inspect     
 		list = List.find_by_id(t.list_id)
 		user = User.find_by_id(list.user_id)
 		TaskMailer.demo_mail(user,t).deliver!                     

 	end
 end