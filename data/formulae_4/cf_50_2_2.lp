root((and,(and,(respondedexistence,(leucocytes,er_triage,)),(respondedexistence,(leucocytes,er_registration,))),(and,(notprecedence,(iv_antibiotics,er_sepsis_triage,)),(alternateprecedence,(admission_nc,return_er,))))).
root((and,(and,(respondedexistence,(er_triage,er_registration,)),(choice,(er_registration,admission_nc,))),(and,(choice,(er_sepsis_triage,return_er,)),(choice,(er_sepsis_triage,crp,))))).
root((and,(or,(choice,(er_triage,release_a,)),(choice,(lacticacid,er_registration,))),(and,(choice,(er_registration,return_er,)),(notprecedence,(return_er,er_registration,))))).
root((and,(or,(notchainprecedence,(er_registration,admission_nc,)),(choice,(release_a,er_sepsis_triage,))),(or,(notchainresponse,(return_er,iv_antibiotics,)),(notresponse,(release_a,er_sepsis_triage,))))).
root((or,(or,(notchainprecedence,(er_registration,return_er,)),(choice,(release_a,er_triage,))),(or,(respondedexistence,(lacticacid,er_triage,)),(notchainprecedence,(return_er,er_triage,))))).
root((or,(and,(choice,(admission_nc,er_registration,)),(choice,(er_registration,leucocytes,))),(or,(choice,(iv_antibiotics,er_registration,)),(notchainresponse,(return_er,iv_liquid,))))).
root((and,(and,(respondedexistence,(lacticacid,er_registration,)),(notresponse,(return_er,er_registration,))),(or,(notresponse,(release_a,er_triage,)),(notchainprecedence,(er_triage,return_er,))))).
root((and,(and,(respondedexistence,(er_sepsis_triage,er_triage,)),(notchainprecedence,(er_sepsis_triage,return_er,))),(or,(choice,(leucocytes,er_sepsis_triage,)),(respondedexistence,(iv_antibiotics,crp,))))).
root((or,(or,(notchainprecedence,(release_a,iv_antibiotics,)),(respondedexistence,(iv_liquid,iv_antibiotics,))),(or,(notprecedence,(return_er,iv_liquid,)),(notresponse,(release_a,er_registration,))))).
root((or,(or,(notchainprecedence,(return_er,er_sepsis_triage,)),(choice,(er_registration,iv_antibiotics,))),(and,(notchainprecedence,(release_a,er_registration,)),(notresponse,(release_a,iv_liquid,))))).
root((and,(or,(existence1,(er_registration,)),(notchainprecedence,(er_sepsis_triage,release_a,))),(or,(notchainprecedence,(iv_antibiotics,return_er,)),(choice,(er_triage,crp,))))).
root((or,(and,(choice,(er_sepsis_triage,er_triage,)),(notchainprecedence,(release_a,er_sepsis_triage,))),(or,(choice,(iv_liquid,er_registration,)),(exactly1,(er_registration,))))).
root((or,(or,(notchainresponse,(er_triage,admission_nc,)),(notchainprecedence,(return_er,admission_nc,))),(and,(respondedexistence,(lacticacid,leucocytes,)),(notchainresponse,(iv_antibiotics,er_sepsis_triage,))))).
root((or,(or,(precedence,(admission_nc,return_er,)),(respondedexistence,(iv_liquid,er_sepsis_triage,))),(or,(notchainprecedence,(return_er,release_a,)),(notchainprecedence,(er_registration,release_a,))))).
root((or,(and,(notresponse,(return_er,er_triage,)),(notresponse,(return_er,er_sepsis_triage,))),(or,(choice,(er_triage,leucocytes,)),(notchainresponse,(er_registration,release_a,))))).
root((or,(and,(choice,(crp,er_triage,)),(notchainresponse,(er_sepsis_triage,release_a,))),(or,(notprecedence,(release_a,iv_antibiotics,)),(notchainresponse,(er_registration,admission_nc,))))).
root((and,(or,(notchainresponse,(return_er,admission_nc,)),(notchainresponse,(admission_nc,er_registration,))),(or,(choice,(er_triage,iv_antibiotics,)),(respondedexistence,(iv_antibiotics,er_sepsis_triage,))))).
root((and,(or,(choice,(lacticacid,er_sepsis_triage,)),(notprecedence,(release_a,iv_liquid,))),(and,(choice,(er_triage,er_registration,)),(notchainprecedence,(er_registration,iv_antibiotics,))))).
root((or,(and,(alternateprecedence,(er_registration,release_a,)),(notresponse,(release_a,admission_nc,))),(and,(choice,(leucocytes,er_registration,)),(notprecedence,(release_a,er_registration,))))).
root((or,(or,(choice,(lacticacid,er_triage,)),(respondedexistence,(er_registration,er_triage,))),(or,(notchainprecedence,(return_er,iv_antibiotics,)),(notchainprecedence,(crp,return_er,))))).
root((and,(and,(choice,(return_er,er_triage,)),(notchainresponse,(return_er,leucocytes,))),(and,(choice,(er_triage,er_sepsis_triage,)),(notchainresponse,(er_triage,release_a,))))).
root((and,(and,(notresponse,(release_a,iv_antibiotics,)),(notchainresponse,(er_triage,return_er,))),(or,(notchainprecedence,(release_a,lacticacid,)),(precedence,(er_triage,release_a,))))).
root((and,(and,(notprecedence,(return_er,release_a,)),(choice,(er_sepsis_triage,er_registration,))),(and,(respondedexistence,(iv_antibiotics,leucocytes,)),(notchainresponse,(er_registration,return_er,))))).
root((or,(and,(choice,(er_sepsis_triage,lacticacid,)),(notchainresponse,(er_sepsis_triage,return_er,))),(and,(respondedexistence,(return_er,er_registration,)),(respondedexistence,(iv_liquid,leucocytes,))))).
root((or,(or,(precedence,(er_triage,return_er,)),(choice,(release_a,er_registration,))),(and,(notchainprecedence,(return_er,leucocytes,)),(respondedexistence,(crp,er_triage,))))).
root((or,(and,(notresponse,(return_er,release_a,)),(precedence,(er_registration,return_er,))),(or,(notresponse,(return_er,admission_nc,)),(respondedexistence,(lacticacid,crp,))))).
root((and,(and,(notchainresponse,(return_er,er_sepsis_triage,)),(notchainresponse,(release_a,lacticacid,))),(or,(notchainprecedence,(er_triage,release_a,)),(precedence,(er_registration,release_a,))))).
root((or,(and,(existence1,(er_triage,)),(respondedexistence,(iv_liquid,er_registration,))),(or,(choice,(er_registration,er_sepsis_triage,)),(notchainresponse,(return_er,er_registration,))))).
root((and,(or,(alternateprecedence,(er_registration,return_er,)),(notchainprecedence,(lacticacid,return_er,))),(and,(notchainresponse,(release_a,iv_liquid,)),(notchainresponse,(admission_nc,return_er,))))).
root((and,(and,(choice,(er_sepsis_triage,leucocytes,)),(respondedexistence,(iv_antibiotics,er_registration,))),(or,(notchainresponse,(return_er,lacticacid,)),(choice,(er_sepsis_triage,admission_nc,))))).
root((or,(and,(choice,(leucocytes,er_triage,)),(notprecedence,(admission_nc,er_registration,))),(and,(respondedexistence,(return_er,admission_nc,)),(respondedexistence,(iv_liquid,er_triage,))))).
root((or,(or,(choice,(crp,er_sepsis_triage,)),(choice,(er_triage,return_er,))),(or,(notchainresponse,(crp,return_er,)),(notchainprecedence,(admission_nc,er_registration,))))).
root((and,(and,(notprecedence,(release_a,admission_nc,)),(choice,(er_registration,iv_liquid,))),(and,(respondedexistence,(return_er,er_triage,)),(notchainresponse,(return_er,release_a,))))).
root((or,(and,(notchainprecedence,(admission_nc,return_er,)),(notchainresponse,(return_er,er_triage,))),(and,(notchainresponse,(release_a,er_registration,)),(notchainprecedence,(iv_liquid,return_er,))))).
root((and,(and,(alternateprecedence,(er_triage,release_a,)),(notchainresponse,(lacticacid,return_er,))),(or,(notresponse,(return_er,iv_liquid,)),(notchainprecedence,(release_a,admission_nc,))))).
root((and,(or,(choice,(er_triage,admission_nc,)),(alternateprecedence,(er_sepsis_triage,iv_antibiotics,))),(and,(notchainresponse,(release_a,iv_antibiotics,)),(notchainprecedence,(return_er,iv_liquid,))))).
root((or,(and,(notprecedence,(return_er,iv_antibiotics,)),(choice,(er_sepsis_triage,release_a,))),(or,(notprecedence,(return_er,er_triage,)),(respondedexistence,(admission_nc,er_triage,))))).
root((and,(and,(notchainresponse,(release_a,admission_nc,)),(respondedexistence,(admission_nc,er_registration,))),(or,(precedence,(er_triage,admission_nc,)),(choice,(er_registration,crp,))))).
root((or,(and,(alternateprecedence,(er_triage,return_er,)),(notprecedence,(return_er,admission_nc,))),(or,(notprecedence,(release_a,er_triage,)),(respondedexistence,(iv_antibiotics,er_triage,))))).
root((or,(and,(respondedexistence,(iv_liquid,crp,)),(choice,(admission_nc,er_sepsis_triage,))),(and,(notchainresponse,(release_a,er_sepsis_triage,)),(notchainprecedence,(er_triage,admission_nc,))))).
root((and,(or,(choice,(er_registration,release_a,)),(notresponse,(iv_antibiotics,er_sepsis_triage,))),(or,(notchainprecedence,(iv_antibiotics,er_sepsis_triage,)),(notchainresponse,(er_registration,iv_antibiotics,))))).
root((or,(or,(choice,(er_registration,er_triage,)),(choice,(er_triage,lacticacid,))),(or,(respondedexistence,(crp,er_registration,)),(notchainresponse,(release_a,er_triage,))))).
root((and,(and,(notchainprecedence,(return_er,lacticacid,)),(choice,(return_er,er_sepsis_triage,))),(and,(respondedexistence,(release_a,er_triage,)),(notchainprecedence,(return_er,er_registration,))))).
root((or,(or,(choice,(er_registration,lacticacid,)),(choice,(iv_liquid,er_triage,))),(or,(choice,(crp,er_registration,)),(notprecedence,(return_er,er_sepsis_triage,))))).
root((or,(and,(choice,(return_er,er_registration,)),(notchainresponse,(iv_antibiotics,return_er,))),(or,(notchainprecedence,(release_a,er_triage,)),(notresponse,(admission_nc,er_registration,))))).
root((or,(and,(notchainresponse,(iv_liquid,return_er,)),(choice,(iv_antibiotics,er_triage,))),(and,(notresponse,(return_er,iv_antibiotics,)),(choice,(admission_nc,er_triage,))))).
root((or,(and,(respondedexistence,(er_sepsis_triage,er_registration,)),(notchainprecedence,(release_a,iv_liquid,))),(and,(precedence,(er_registration,admission_nc,)),(notprecedence,(release_a,er_sepsis_triage,))))).
root((and,(or,(choice,(er_triage,iv_liquid,)),(precedence,(er_sepsis_triage,iv_antibiotics,))),(or,(respondedexistence,(release_a,er_registration,)),(notchainresponse,(er_sepsis_triage,leucocytes,))))).
root((or,(or,(alternateprecedence,(er_sepsis_triage,leucocytes,)),(notprecedence,(iv_liquid,leucocytes,))),(and,(notresponse,(lacticacid,er_registration,)),(choice,(return_er,release_a,))))).
root((or,(or,(notresponse,(leucocytes,iv_antibiotics,)),(chainresponse,(release_a,return_er,))),(or,(notrespondedexistence,(admission_nc,iv_antibiotics,)),(notrespondedexistence,(lacticacid,admission_nc,))))).
