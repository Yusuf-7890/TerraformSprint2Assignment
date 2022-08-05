output "output_block" {
  value = [for i in var.ins_type.Bill:i]
  
}
