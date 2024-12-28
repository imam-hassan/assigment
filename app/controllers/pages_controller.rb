class PagesController < ApplicationController

    allow_unauthenticated_access only: %i[ home home]
    
    def home
    end
    def contact
    end
    def about 
    end
    def contact_submit 
    end
    def contact_feedback 
    end
    def works 
    end 
end
