output "stream_download_lookup_account_id" {
  description = "Map of account_id values across all stream_download_lookup, keyed the same as var.stream_download_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_stream_download.stream_download_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "stream_download_lookup_identifier" {
  description = "Map of identifier values across all stream_download_lookup, keyed the same as var.stream_download_lookup except keys with no identifier are omitted"
  value       = { for k, v in data.cloudflare_stream_download.stream_download_lookup : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}

