library(dplyr)

opcs_to_snomed_raw <- read.csv('output.csv')
opcs_to_snomed_raw$SNOMED_id <- as.character(opcs_to_snomed_raw$SNOMED_id)

joint_CONCEPT_opcs <- opcs_to_snomed_raw %>% select('SNOMED_id','OPCS')

save(joint_CONCEPT_opcs, file='joint_CONCEPT_opcs.rda')


