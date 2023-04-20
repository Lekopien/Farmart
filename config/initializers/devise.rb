# config.jwt do |jwt|
#     jwt.secret = Rails.application.credentials.secret_key_base
#     jwt.dispatch_requests = [
#       ['POST', %r{^/auth/sign_in$}]
#     ]
#     jwt.revocation_requests = [
#       ['DELETE', %r{^/auth/sign_out$}]
#     ]
#     jwt.expiration_time = 1.day.to_i
#     jwt.blacklist_checker = JwtBlacklist
#     jwt.revocation_strategy = JwtBlacklist
#   end
  