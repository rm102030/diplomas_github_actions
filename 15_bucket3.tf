# Este bucket es para guardar el zip con la layer de qr
resource "aws_s3_bucket" "lambda_layer_bucket" {
  bucket = "qr-layer-bucket"
}

# upload zip file to s3
resource "aws_s3_object" "lambda_layer_zip" {
  bucket = aws_s3_bucket.lambda_layer_bucket.id
  key    = "lambda_layers/${local.layer_name}/${local.layer_zip_path}"
  source = local.layer_zip_path
  #depends_on = [null_resource.lambda_layer] # triggered only if the zip file is created
}