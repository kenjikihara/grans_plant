require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


# CarrierWave.configure do |config|
  
#   config.fog_provider = 'fog/aws'
#   config.fog_credentials = {
#       provider:              'AWS',
#       aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],
#       aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
#       region:                'ap-northeast-1',
#       path_style:            true,
#   }

#   config.fog_public     = true
#   config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

#   case Rails.env
#     when 'production'
#       config.fog_directory = 'gransplant-production'
#       config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/gransplant-production'
#     when 'development'
#       config.fog_directory = 'gransplant-development'
#       config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/gransplant-development'
#   end
# end


if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'ap-northeast-1'#リージョン東京
    }
    config.fog_public = true
    config.fog_directory = 'gransplant-production' if Rails.env.production?
    config.fog_directory = 'gransplant-development' if Rails.env.development?
    config.cache_storage = :fog
  end
end