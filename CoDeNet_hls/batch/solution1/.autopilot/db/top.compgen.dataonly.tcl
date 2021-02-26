# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
fmap { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
k0_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
k0_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
quant { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
offsets { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
D { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
IC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
OC { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
batch { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
STRIDE_2 { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
skip3 { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
skip1 { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
deform { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
relu1 { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
relu3 { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


