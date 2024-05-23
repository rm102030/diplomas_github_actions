
output "Lambdas" {
  value = [{
    arn           = aws_lambda_function.src.arn
    name          = aws_lambda_function.src.function_name
    description   = aws_lambda_function.src.description
    version       = aws_lambda_function.src.version
    last_modified = aws_lambda_function.src.last_modified
  }]
}


output "API_Nº1_url" {
  description = "Base URL for API Gateway stage."
  value       = aws_apigatewayv2_stage.default.invoke_url
}

output "API_Nº2_url" { value = "${aws_api_gateway_deployment.front.invoke_url}${aws_api_gateway_stage.stage.stage_name}/${aws_api_gateway_resource.root.path_part}?#home"}


