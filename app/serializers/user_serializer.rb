class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :melodies
end
