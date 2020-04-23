resource "kubernetes_namespace" "events_ns" {
  metadata {
    name = "events"
  }
}