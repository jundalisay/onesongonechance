OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '163644150696528', '07185cc1e8d029d4f63fef6a31fb3c18', 
  :scope => 'email,user_friends,user_actions.music,user_location,user_photos,user_relationships,user_relationship_details'
end