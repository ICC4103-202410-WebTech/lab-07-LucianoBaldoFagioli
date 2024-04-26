class StaticPagesController < ApplicationController
    def home
        @vars = 'Home /'
    end

    def about
        @vars = 'About /'
    end

    def contact
        @vars = 'Contact /'
    end
end