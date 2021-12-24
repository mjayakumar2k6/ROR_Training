class User < ApplicationRecord

    def check_password?(pwd)
        password == pwd
    end
end
