##########################################################################
# Allosteric Network Compiler (ANC) model file
# Created by BioJazz version ALPHA-02 released on 2012/06/15
# Mon Jan 27 17:17:43 GMT 2014
##########################################################################

##########################################################################
# PARAMETERS
##########################################################################
$max_external_iterations = -1
$max_internal_iterations = -1
$max_complex_size = 3
$max_species = 512
$max_csite_bound_to_msite_number = 1
$default_steric_factor = 1000
$export_graphviz = "network,collapse_states,collapse_complexes"
        

##########################################################################
# OBJECTS:
##########################################################################
#-------------------------
MODEL:  # G0000
#-------------------------
ReactionSite : {
    name => "PD0298",
    type => "bsite",
    Keq_ratio => 1.01359650093856,
}
AllostericStructure : {
    name => "D0263",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.010366693864274,1.09914684711349],
    Phi => 0.623655913978495,
    elements => [PD0298],
}
Structure : {  # IC of G0241 = 2.55637542207457
    name => "G0241",
    elements => [D0263],
    max_count => 2,
}


ReactionSite : {
    name => "PD0539",
    type => "csite",
    Keq_ratio => 1.24679966364121,
}
AllostericStructure : {
    name => "D0504",
    allosteric_flag => 0,
    allosteric_transition_rates => [3.20888284294226,1.16015530173997],
    Phi => 0.992179863147605,
    elements => [PD0539],
}
Structure : {  # IC of G0482 = 1.55101442088444
    name => "G0482",
    elements => [D0504],
    max_count => 2,
}


ReactionSite : {
    name => "PD1021",
    type => "bsite",
    Keq_ratio => 1.00451178020473,
}
AllostericStructure : {
    name => "D0986",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0105550528101563,1.11911793376878],
    Phi => 0.197458455522972,
    elements => [PD1021],
}

ReactionSite : {
    name => "PD1236",
    type => "csite",
    Keq_ratio => 1.04134661084393,
}
AllostericStructure : {
    name => "D1201",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.0143351663513103,1.01359650093856],
    Phi => 0.497556207233627,
    elements => [PD1236],
}
Structure : {  # IC of G0964 = 4.63115321845824
    name => "G0964",
    elements => [D0986,D1201],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => G0241,
	IC => 2.55637542207457,
}
Init : {
	structure => G0482,
	IC => 1.55101442088444,
}
Init : {
	structure => G0964,
	IC => 4.63115321845824,
}

#-------------------------
MODEL:  # LG0000
#-------------------------
ReactionSite : {
    name => "LPD0057",
    type => "bsite",
    Keq_ratio => 0.01,
}
AllostericStructure : {
    name => "LD0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.01,0.01],
    Phi => 0,
    elements => [LPD0057],
}
Structure : {  # IC of LG0000 = 0.001
    name => "LG0000",
    elements => [LD0022],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => LG0000,
	IC => 0.001,
}

#-------------------------
MODEL:  # TG0000
#-------------------------
ReactionSite : {
    name => "TPD0057",
    type => "msite",
    Keq_ratio => 0.01,
}
AllostericStructure : {
    name => "TD0022",
    allosteric_flag => 0,
    allosteric_transition_rates => [0.01,0.01],
    Phi => 0,
    elements => [TPD0057],
}
Structure : {  # IC of TG0000 = 9.99999999999999
    name => "TG0000",
    elements => [TD0022],
    max_count => 2,
}


# Initial concentrations
Init : {
	structure => TG0000,
	IC => 9.99999999999999,
}

        

##########################################################################
# RULES:
##########################################################################
MODEL:

CanBindRule : {
  name => "PD0298 LPD0057 (0 . 0 .)",
  ligand_names => ["PD0298", "LPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 31.6227766016838,
  kb => 3.98107170553497,
}

CanBindRule : {
  name => "TPD0057 PD0298 (0 . 0 .)",
  ligand_names => ["TPD0057", "PD0298"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 31.6227766016838,
  kb => 3.98107170553497,
}

CanBindRule : {
  name => "TPD0057 PD0298 (1 . 0 .)",
  ligand_names => ["TPD0057", "PD0298"],
  ligand_msite_states => ["1", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 31.6227766016838,
  kb => 3.98107170553497,
}

CanBindRule : {
  name => "PD0539 PD0539 (0 . 0 .)",
  ligand_names => ["PD0539", "PD0539"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.251188643150958,
  kb => 1,
}

CanBindRule : {
  name => "PD0539 LPD0057 (0 . 0 .)",
  ligand_names => ["PD0539", "LPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 3.98107170553497,
  kb => 1.99526231496888,
}

CanBindRule : {
  name => "PD0539 TPD0057 (0 . 0 .)",
  ligand_names => ["PD0539", "TPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 3.98107170553497,
  kb => 1.99526231496888,
  kp => 0.186120718925869,
}

CanBindRule : {
  name => "PD1021 LPD0057 (0 . 0 .)",
  ligand_names => ["PD1021", "LPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.501187233627272,
  kb => 1,
}

CanBindRule : {
  name => "TPD0057 PD1021 (0 . 0 .)",
  ligand_names => ["TPD0057", "PD1021"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.501187233627272,
  kb => 1,
}

CanBindRule : {
  name => "TPD0057 PD1021 (1 . 0 .)",
  ligand_names => ["TPD0057", "PD1021"],
  ligand_msite_states => ["1", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.501187233627272,
  kb => 1,
}

CanBindRule : {
  name => "PD1236 PD1236 (0 . 0 .)",
  ligand_names => ["PD1236", "PD1236"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 0.0630957344480194,
  kb => 0.001,
}

CanBindRule : {
  name => "PD1236 LPD0057 (0 . 0 .)",
  ligand_names => ["PD1236", "LPD0057"],
  ligand_msite_states => ["0", "0"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 1,
}

CanBindRule : {
  name => "PD1236 TPD0057 (0 . 1 .)",
  ligand_names => ["PD1236", "TPD0057"],
  ligand_msite_states => ["0", "1"],
  ligand_allosteric_labels => [".", "."],
  kf => 1.99526231496888,
  kb => 1,
  kp => 0.0742963950759495,
}
        

##########################################################################
# EQUATIONS:
##########################################################################
EQN:

null -> LG0000; clamp_source_LG0000="(+(event_flags(1) && ~event_flags(2))*min((t-event_times(1))/1, 1)*10*4.0+event_flags(2)*max(1-(t-event_times(2))/1, 0)*10*4.0)"
LG0000 -> null; clamp_sink_LG0000=4.0        

##########################################################################
# CONFIG:
##########################################################################
CONFIG:

ode_event_times = ~ ~ ~;
SS_timescale = 500.0;
t_final = 20000;
t_vector = [t0:1.0:tf];
matlab_ode_solver = ode23s;
matlab_solver_options{InitialStep} = 1e-8;
matlab_solver_options{AbsTol} = 1e-9;
matlab_solver_options{RelTol} = 1e-3;
matlab_solver_options{MaxStep} = 500.0;
