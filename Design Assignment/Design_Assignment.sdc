create_clock -name CLK50MHZ -period 20.000 [get_ports {CLK50MHZ}]
derive_pll_clocks
derive_clock_uncertainty
