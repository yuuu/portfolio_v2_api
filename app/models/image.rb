class Image
  Aws.config.update(
   region: 'ap-northeast-1' ,
   credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
  )

  def self.signed_url(filename)
    signer = Aws::S3::Presigner.new
    signer.presigned_url(:put_object, bucket: ENV['S3_BUCKET_NAME'], key: filename)
  end
end