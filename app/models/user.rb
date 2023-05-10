# has email:string
# password_digest:string
# 
# password:string virtual
# password_confirmation:string virtual
class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, format: {with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/, message:"must be and email"}
end
