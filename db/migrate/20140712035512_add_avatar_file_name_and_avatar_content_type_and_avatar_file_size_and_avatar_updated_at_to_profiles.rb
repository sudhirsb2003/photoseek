class AddAvatarFileNameAndAvatarContentTypeAndAvatarFileSizeAndAvatarUpdatedAtToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :avatar_file_name, :string
    add_column :profiles, :avatar_content_type, :string
    add_column :profiles, :avatar_file_size, :integer
    add_column :profiles, :avatar_uupdate_at, :datetime
  end
end
