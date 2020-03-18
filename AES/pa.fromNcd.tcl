
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name AES -dir "C:/Users/qiuke/Desktop/AES_V1.0/AES/planAhead_run_1" -part xc7a100tfgg676-1
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/qiuke/Desktop/AES_V1.0/AES/ShiftRows.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/qiuke/Desktop/AES_V1.0/AES} }
set_property target_constrs_file "ShiftRows.ucf" [current_fileset -constrset]
add_files [list {ShiftRows.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/qiuke/Desktop/AES_V1.0/AES/ShiftRows.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/qiuke/Desktop/AES_V1.0/AES/ShiftRows.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/qiuke/Desktop/AES_V1.0/AES/ShiftRows.twx\": $eInfo"
}
