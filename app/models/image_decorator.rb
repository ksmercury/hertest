Image.attachment_definitions[:attachment][:storage] = :s3
Image.attachment_definitions[:attachment][:s3_credentials] = {
  :access_key_id => ENV['S3_KEY'],
  :secret_access_key => ENV['S3_SECRET']
}
Image.attachment_definitions[:attachment][:bucket] = ENV['S3_BUCKET']
Image.attachment_definitions[:attachment][:path] = "products/:id/:style.:extension"
Image.attachment_definitions[:attachment][:s3_headers] = {'Cache-Control' => 'max-age=31557600'}
Image.attachment_definitions[:attachment].delete :url
Image.attachment_definitions[:attachment][:default_style] = :original
