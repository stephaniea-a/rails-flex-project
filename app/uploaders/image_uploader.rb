class ImageUploader < CarrierWave::Uploader::Base
 
  include CarrierWave::MiniMagick
 
  storage :fog
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  version :large do
    process resize_to_limit: [800, 800]
  end
 
  version :medium, :from_version => :large do
    process resize_to_limit: [300, 300]
  end
 
  version :thumb, :from_version => :medium do
    process resize_to_fit: [200, 200]
  end
 
  version :square do
    process :resize_to_fill => [500, 500]
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path([thumb, "placeholder.png"].compact.join('_'))
  end
 
end