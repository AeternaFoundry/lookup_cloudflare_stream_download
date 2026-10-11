data "cloudflare_stream_download" "stream_download_lookup" {
  for_each = var.stream_download_lookup

  account_id = each.value.account_id
  identifier = each.value.identifier
}

