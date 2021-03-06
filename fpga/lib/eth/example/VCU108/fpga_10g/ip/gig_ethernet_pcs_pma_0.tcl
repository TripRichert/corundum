if {[info exists ip_gen_dir]} {
    set ip_gen_dirstr "-dir $ip_gen_dir"
} else {
    set ip_gen_dirstr ""
}

create_ip -name gig_ethernet_pcs_pma -vendor xilinx.com -library ip -module_name gig_ethernet_pcs_pma_0 {*}$ip_gen_dirstr

set_property -dict [list \
    CONFIG.Standard {SGMII} \
    CONFIG.Physical_Interface {LVDS} \
    CONFIG.Management_Interface {false} \
    CONFIG.SupportLevel {Include_Shared_Logic_in_Core} \
    CONFIG.LvdsRefClk {625} \
] [get_ips gig_ethernet_pcs_pma_0]
