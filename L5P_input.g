//genesis - Script to provide current injection input

create neutral /input
create pulsegen /input/pulse

setfield /input/pulse level1 {I_inj} width1 0.205 delay1 0.045 level2 0.0 width2 0.003 delay2 1.0 baselevel 0.0 trig_mode 0

addmsg /input/pulse /L5P/soma INJECT output

echo {getfield /input/pulse/ level1}

