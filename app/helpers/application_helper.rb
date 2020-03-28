module ApplicationHelper
    def truncate_words(post)
        truncate_post = truncate_words(post, length: 400)
        
    end

    def published(date)
        days_ago = time_ago_in_words(date)
       
    end 
end
