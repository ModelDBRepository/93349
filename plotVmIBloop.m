%Script to plot original recording vs. modelling output
%12.07.02 JDJ

%Load all data-files
load DS991014IVPotential.asc

for i=0:17
    eval(['load L5P_' num2str(i) '_somaVm.dat;']);
end

%Convert time to seconds from milliseconds
DS991014IVPotential(:,1) = DS991014IVPotential(:,1)./1000;

%Convert membrane potential to volt from millivolt and adjust for liquid junction potential
for j=2:19
	eval(['DS991014IVPotential(:,' num2str(j) ') = DS991014IVPotential(:,' num2str(j) ')./1000;']); 
    eval(['DS991014IVPotential(:,' num2str(j) ') = DS991014IVPotential(:,' num2str(j) ')-0.01;']); 
end

%set up the figure
figure('Units','centimeters','Position',[5 5 29.0 21.0],'PaperUnits','centimeters','PaperPosition',[5 5 29.0 21.0]);
orient landscape
hold on
axis([0.0 .5 -0.11 0.06]);

%plot experimental data
for j=2:19
 	eval(['plot(DS991014IVPotential(:,1),DS991014IVPotential(:,' num2str(j) '),''Color'',''k'',''LineStyle'',''--'');']); 
end

%plot simulated traces
for i=0:17
    eval(['plot(L5P_' num2str(i) '_somaVm(:,1),L5P_' num2str(i) '_somaVm(:,2),''Color'',''r'');']);
end

