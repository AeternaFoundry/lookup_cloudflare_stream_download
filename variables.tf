variable "stream_download_lookup" {
  description = <<EOT
Map of stream_download_lookup, attributes below
Required:
    - account_id
    - identifier
EOT

  type = map(object({
    account_id = string
    identifier = string
  }))
}

