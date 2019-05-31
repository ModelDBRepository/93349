float I_inj = -700e-12
str inj_label = "h700pA"
float Q10 = 2.3
float t_sim = 32

//Base H-current conductances before distribution
float GH_s = 0.15
float GH_d = 0.15

//Synaptic parameters
float G_Glu = -0.75e-8
float Glu_tau1 = 5.0e-3
float Glu_tau2 = 30.0e-3


//Ca-pool parameters
float B = 5.2e4
float CaTau_s = 100.0e-3
float CaTau_d = 20.0e-3

//Conductance scaling parameters
float DNaP = 1.0
float DKC = 0.30
float DKM = 0.56

//somatic conductances
float GNaF_s = 4800
float GNaP_s = 0.0032 * {GNaF_s} * {DNaP}
float GKDr_s = 1250
float GKA_s = 300
float GKC_s = 75 * {DKC}
float GKAHP_s = 1.0
float GK2_s = 1.0
float GKM_s = 50.0 * {DKM}
float GCaL_s = 5.0
float GCaT_s = 1.0

//Apical shaft
float GNaF_shaft = 350
float GKA_shaft = 300.0
float GNaP_shaft = 0.0032 * {GNaF_shaft} * {DNaP}
float GKDr_shaft = 350
float GKC_shaft = 75 * {DKC}
float GKAHP_shaft = 1.0
float GK2_shaft = 1.0
float GKM_shaft = 50.0 * {DKM}
float GCaL_shaft = 3.0
float GCaT_shaft = 1.0

//basal dendritic conductances
float GNaF_bd = 350
float GNaP_bd = 0.0032 * {GNaF_bd} * {DNaP}
float GKDr_bd = 350
float GKA_bd = 20.0
float GKC_bd = 75 * {DKC}
float GKAHP_bd = 1.0
float GK2_bd = 1.0
float GKM_bd = 50.0 * {DKM}
float GCaL_bd = 3.0
float GCaT_bd = 1.0

//proximal apical dendritic conductances
float GNaF_pad = 350
float GNaP_pad = 0.0032 * {GNaF_pad} * {DNaP}
float GKDr_pad = 350
float GKA_pad = 20.0
float GKC_pad = 75 * {DKC}
float GKAHP_pad = 1.0
float GK2_pad = 1.0
float GKM_pad = 50.0 * {DKM}
float GCaL_pad = 3.0
float GCaT_pad = 1.0

//medial apical dendritic conductances
float GNaF_mad = 350
float GNaP_mad = 0.0032 * {GNaF_mad} * {DNaP}
float GKDr_mad = 350
float GKA_mad = 20.0
float GKC_mad = 75 * {DKC}
float GKAHP_mad = 1.0
float GK2_mad = 1.0
float GKM_mad = 43.0 * {DKM}
float GCaL_mad = 3.0
float GCaT_mad = 1.0

//distal conductances
float GNaF_dd = 62.5
float GNaP_dd = 0.0032 * {GNaF_dd} * {DNaP}
float GKDr_dd = 0.0
float GKA_dd = 20
float GKC_dd = 0
float GKAHP_dd = 1.0
float GK2_dd = 1.0
float GKM_dd = 9.25
//float GCaL_dd = 15.0
float GCaL_dd = 15.0
float GCaT_dd = 1.0












