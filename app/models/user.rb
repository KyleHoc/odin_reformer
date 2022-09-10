class User < ApplicationRecord
    validates :username, length: {minimum: 7}
    validates :password, length: {in: 8..16}
    validate :and_sign

    def and_sign
        ["@"].include? email
    end
end
