module ApplicationHelper
    
   def userCount
       @userCount = User.count
   end
    
    def fullsticky_title(sticky_title = '')
        base_sticky = ""
        if sticky_title.empty?
            base_sticky
        else
            sticky_title
        end
    end
end
