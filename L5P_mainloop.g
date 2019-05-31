//genesis


setclock 0 50e-6
setclock 1 5e-5
float tmax = 0.5


//Make prototype channels and compartments in library
include L5P_const.g

create neutral /library
disable /library
pushe library

include L5P_chans.g
include L5P_comps.g

pope


//Set up multicompartmental model in Hines solver mode based on reconstructed morphology
readcell DS1_141099_rot2_sc_defmesh.p /L5P -hsolve


//Set up differential distributions of Rm and h-channels
include DiffRm.g
include Hgradient.g

DiffRm /L5P 4.0 0.27 500e-6 50e-6
Hgradient /L5P H 0.15 6.0 500e-6 50e-6


//Set up current injection input based on experimentally used current injections
include L5P_input.g
include ExpInjCur.g


//Set up graphical and ascii output
include L5P_graph.g
include L5P_ascout.g

setfield /L5P path /L5P/##[][TYPE=compartment]
setfield /L5P chanmode 1
call /L5P SETUP
setmethod 11
reset

//Main simulation: Loop through all levels of current injections
int count
I_inj = 250.0e-12
for (count = 0; count <= 17; count = count + 1)
   reset
   str inj_label = {count}
   setfield /input/pulse level1 {getfield /InjCur table->table[{count}]} width1 0.20 delay1 0.05035 level2 0.0 width2 0.003 delay2 1.0 baselevel 0.0 trig_mode 0
   asc_file_name = {"L5P_" @ {inj_label} @ "_somaVm.dat"}
   setfield /output/{asc_name} filename {asc_file_name} initialize 1 append 0 leave_open 1 
   reset
   echo {getfield /input/pulse level1}
   step {tmax} -t
end

quit

