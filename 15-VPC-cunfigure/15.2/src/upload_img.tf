

resource "yandex_storage_object" "image" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = local.bucket_name
  key    = "1.jpg"
  source = "~/1.jpg"
  acl = "public-read"
  depends_on = [yandex_storage_bucket.dosia]
}
