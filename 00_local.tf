resource "local_file" "deployment_template" {
  content = templatefile("scr_front/contactus.html", {
    #API_ENDPOINT = "API_ENDPOINT"
    #API_ENDPOINT = var.aws_region
    API_ENDPOINT = aws_apigatewayv2_stage.default.invoke_url
    #API_ENDPOINT = "${aws_apigatewayv2_stage.default.invoke_url}"
    }
  )
  filename = "/Users/ricardo.martinez/Documents/terraform/diplomas/lambda/lambda1-urlpresigned/front/contactus.html"
}

locals {
  layer_zip_path = "qr/layerqr.zip"
  layer_name     = "qr_layer"
  #requirements_path = "${path.root}/../requirements.txt"
}


resource "local_file" "deployment_template_qr" {
  content = templatefile("src_qr/lambda_function.py", {
    PRESIGNED = aws_s3_bucket.example.id
    QR = aws_s3_bucket.qrdiplomas.id
    }
  )
  filename = "/Users/ricardo.martinez/Documents/terraform/diplomas/lambda/lambda1-urlpresigned/qr/lambda_function.py"
}