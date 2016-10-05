class Park < ApplicationRecord
 has_attached_file :photo, default_url: "/images/missing.png"
 validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
