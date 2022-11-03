class JsonWebToken
  SECRET_KEY = Rails.application.secret_key_base.to_s

  def self.encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end

5879de873587968c10659c33b02df51fe89498636826bd0b43969f90e883acdeb7c634a54d8efa41097c6bbf34184c30b651afbd33740e779d5398d2efd61bbd