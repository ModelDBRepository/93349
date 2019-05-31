//Genesis - ascii output file

   str asc_name = "L5P_out"
   create asc_file /output/{asc_name}
   addmsg /L5P/soma /output/{asc_name} SAVE Vm
   str asc_file_name = {"L5P_" @ {inj_label} @ "_somaVm.dat"}
   setfield /output/{asc_name} filename {asc_file_name} initialize 1 append 0 leave_open 1 
   useclock /output/{asc_name} 1








