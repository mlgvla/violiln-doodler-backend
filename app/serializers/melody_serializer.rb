class MelodySerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  attributes :title, :notes, :key, :user_id, :user
end
