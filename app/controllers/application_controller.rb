class ApplicationController < ActionController::Base
    #estou exigindo um login para todas as action ou methods que existirem em minha aplicação
    before_action :require_login
    #estou definindo que não será excultado require_login aqui na actions de minha controller
    skip_before_action :require_login
end
