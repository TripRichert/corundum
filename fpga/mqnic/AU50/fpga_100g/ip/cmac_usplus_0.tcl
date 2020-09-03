if {[info exists ip_gen_dir]} {
    set ip_gen_dirstr "-dir $ip_gen_dir"
} else {
    set ip_gen_dirstr ""
}

create_ip -name cmac_usplus -vendor xilinx.com -library ip -module_name cmac_usplus_0 {*}$ip_gen_dirstr

set_property -dict [list \
    CONFIG.CMAC_CAUI4_MODE {1} \
    CONFIG.NUM_LANES {4x25} \
    CONFIG.GT_REF_CLK_FREQ {161.1328125} \
    CONFIG.USER_INTERFACE {AXIS} \
    CONFIG.GT_DRP_CLK {125} \
    CONFIG.TX_FLOW_CONTROL {0} \
    CONFIG.RX_FLOW_CONTROL {0} \
    CONFIG.INCLUDE_RS_FEC {1} \
    CONFIG.CMAC_CORE_SELECT {CMACE4_X0Y4} \
    CONFIG.GT_GROUP_SELECT {X0Y28~X0Y31} \
    CONFIG.LANE1_GT_LOC {X0Y28} \
    CONFIG.LANE2_GT_LOC {X0Y29} \
    CONFIG.LANE3_GT_LOC {X0Y30} \
    CONFIG.LANE4_GT_LOC {X0Y31} \
    CONFIG.ENABLE_PIPELINE_REG {1}
] [get_ips cmac_usplus_0]
