variable "target_platform" {
  type        = string
  description = "Target platform used for Server Profiles and Policies"
  default     = "FIAttached"
}

# Server and Organization names
variable "server_list" {
  type        = list(map(string))
  description = "Servers (identified by name, object_type, and target_platform) to assign to configured server profiles"
  default     =  [
    {
      name                   = "UCSX-FI-1-2",
      object_type            = "compute.Blade",
      target_platform        = "FIAttached",
      vmedia_policy          = "NFS-3",
      boot_iso_file_location = "172.168.18.10/esxi.iso"             //vmedia서버 구축 IP및 
    }
  ]
}

variable "organization" {
  type        = string
  description = "The name of the Organization this resource is assigned to"
  default     = "CIP"   //변경 default ->> CIP
}

variable "server_profile_action" {
  type        = string
  description = "Desired Action for the server profile (e.g., Deploy, Unassign)"
  default     = "Deploy"    //Deploy  ->> No-op  >> Deploy 
#No-op(해당 프로파일 생성 assign)
#Deploy(해당 프로파일 적용)
}

variable "imc_access_policy" {
  type        = string
  description = "Name of IMC Access Policy to associate with the server profile"
  default     = "IMM-Demo-Terraform"
}
/* No use for in-band connectivity 
variable "imc_access_vlan" {
  type        = number
  description = "VLAN ID used by IMC Access Policy"
  default     = null
}
*/
variable "ip_pool" {
  type        = string
  description = "Name of IP Pool used by IMC Access Policy"
  default     = "IP_Pool"   //변경 #GUI생성후 적용내용 코드로 수정 필요
}

variable "local_user_policy" {
  type        = string
  description = "Name of Local User Policy to associate with the server profile"
  default     = null
}

variable "local_username" {
  type        = string
  description = "Local username used by Local User Policy"
  default     = null
}

variable "local_username_password" {
  type        = string
  description = "Local username password used by Local User Policy"
  default     = null
}

variable "boot_order_policy" {
  type        = string
  description = "Name of Boot Order Policy to associate with the server profile"
  default     = "IMM-NFS-Demo"
}

variable "boot_mode" {
  type        = string
  description = "Configured Boot Mode for the Boot Order Policy"
  default     = "Legacy"
}

variable "lan_connectivity_policy" {
  type        = string
  description = "Name of LAN Connectivity Policy to associate with the server profile"
  default     = "IMM-NFS-Demo"
}

variable "mac_pool" {
  type        = string
  description = "MAC Address Pool used by VNIC Ethernet Interfaces and LAN Connectivity Policy"
  default     = "Mac_Pool"    //변경 
                              #GUI생성후 적용내용 코드로 수정 필요
}

variable "ethernet_network_group" {
  type        = string
  description = "Ethernet Network Group Policy used by VNIC Ethernet Interfaces and LAN Connectivity Policy"
  default     = "IMM-NFS-Demo"
}

variable "mtu" {
  type        = number
  description = "MTU used by Ethernet QoS Policy"
  default     = 1500
}

variable "cluster_vlan" {
  type        = number
  description = "VLAN ID used by Ethernet Network Group Policy"
  default     = 1
}

variable "vnic_name" {
  type        = string
  description = "VNIC Ethernet Interface name"
  default     = "eth0"
}
