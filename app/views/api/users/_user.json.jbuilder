json.id user.id
json.name user.name
json.email user.email
json.avatar_url rails_blob_url(user.avatar) if user.avatar.attachment