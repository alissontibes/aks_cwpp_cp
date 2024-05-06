variable "k8s-cluster-name" {
    description = "the name of your AKS cluster"
    default = "aks-cloudguard"
    type = string
}
variable "node-pool-count" {
    default = 2
}
variable "location" {
    type = string #eastus #you choose what fits most 
}

variable "cspm-key-id" {
    description = "Insert the API KEY ID from Check Point Infinity"
    type = string
}
variable "cspm-key-secret" {
    description = "Insert the API KEY Secret from Check Point Infinity"
    type = string
}
variable "cspm-api-endpoint" {
    description = "Dome9 Region API"
    default = "https://api.dome9.com/v2/"
}
variable "cspm-org-unit-id" {
    description = "Insert the Organizational Unit ID"
    type = string
}

variable "cspm-residency" {
    description = "Infinity Portal Region - usea1 [default], euwe1, apso1"
    type = string
    default = "usea1"
}