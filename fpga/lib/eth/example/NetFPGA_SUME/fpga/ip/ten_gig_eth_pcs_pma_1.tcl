if {[info exists ip_gen_dir]} {
    set ip_gen_dirstr "-dir $ip_gen_dir"
} else {
    set ip_gen_dirstr ""
}

create_ip -name ten_gig_eth_pcs_pma -vendor xilinx.com -library ip -module_name ten_gig_eth_pcs_pma_1 {*}$ip_gen_dirstr

set_property -dict [list \
    CONFIG.MDIO_Management {false} \
    CONFIG.base_kr {BASE-R} \
    CONFIG.SupportLevel {0} \
    CONFIG.DClkRate {125} \
] [get_ips ten_gig_eth_pcs_pma_1]
