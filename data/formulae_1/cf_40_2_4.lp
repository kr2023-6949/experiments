root((and,(and,(notresponse,(return_er,er_sepsis_triage,)),(respondedexistence,(crp,er_triage,))),(and,(notchainprecedence,(iv_antibiotics,return_er,)),(choice,(return_er,er_triage,))))).
root((and,(or,(respondedexistence,(leucocytes,er_registration,)),(notchainprecedence,(er_triage,return_er,))),(or,(choice,(iv_liquid,er_registration,)),(notresponse,(return_er,release_a,))))).
root((or,(or,(respondedexistence,(iv_liquid,iv_antibiotics,)),(notprecedence,(return_er,er_registration,))),(or,(notresponse,(return_er,er_triage,)),(respondedexistence,(iv_antibiotics,er_triage,))))).
root((and,(or,(notchainresponse,(er_registration,return_er,)),(notprecedence,(admission_nc,er_registration,))),(and,(notchainresponse,(er_registration,iv_antibiotics,)),(respondedexistence,(lacticacid,leucocytes,))))).
root((and,(or,(exactly1,(er_registration,)),(notprecedence,(release_a,iv_liquid,))),(or,(notchainresponse,(iv_liquid,return_er,)),(notchainprecedence,(return_er,lacticacid,))))).
root((and,(and,(notchainprecedence,(return_er,iv_liquid,)),(notchainprecedence,(er_registration,admission_nc,))),(or,(notprecedence,(release_a,er_triage,)),(choice,(leucocytes,er_sepsis_triage,))))).
root((and,(or,(notchainresponse,(er_registration,release_a,)),(choice,(release_a,er_registration,))),(or,(notchainprecedence,(er_sepsis_triage,release_a,)),(notchainresponse,(release_a,admission_nc,))))).
root((and,(and,(precedence,(er_registration,release_a,)),(choice,(er_triage,lacticacid,))),(and,(choice,(er_registration,release_a,)),(respondedexistence,(admission_nc,er_registration,))))).
root((and,(and,(notresponse,(return_er,admission_nc,)),(respondedexistence,(iv_antibiotics,crp,))),(or,(respondedexistence,(er_sepsis_triage,er_registration,)),(notchainprecedence,(return_er,er_registration,))))).
root((and,(and,(respondedexistence,(admission_nc,er_triage,)),(choice,(iv_liquid,er_triage,))),(or,(choice,(er_triage,return_er,)),(choice,(er_triage,release_a,))))).
root((or,(and,(notchainresponse,(release_a,er_registration,)),(choice,(er_registration,iv_liquid,))),(or,(choice,(leucocytes,er_triage,)),(notchainprecedence,(er_triage,admission_nc,))))).
root((or,(and,(choice,(er_sepsis_triage,crp,)),(choice,(er_registration,admission_nc,))),(or,(respondedexistence,(lacticacid,crp,)),(choice,(er_sepsis_triage,lacticacid,))))).
root((or,(or,(choice,(release_a,er_triage,)),(notchainprecedence,(er_triage,release_a,))),(or,(choice,(er_triage,leucocytes,)),(alternateprecedence,(er_triage,release_a,))))).
root((or,(or,(choice,(return_er,er_sepsis_triage,)),(notresponse,(iv_antibiotics,er_sepsis_triage,))),(or,(respondedexistence,(return_er,er_triage,)),(choice,(er_sepsis_triage,return_er,))))).
root((and,(and,(choice,(er_registration,er_triage,)),(choice,(leucocytes,er_registration,))),(and,(notchainresponse,(er_triage,release_a,)),(notchainresponse,(admission_nc,return_er,))))).
root((or,(or,(precedence,(er_sepsis_triage,iv_antibiotics,)),(notchainprecedence,(crp,return_er,))),(and,(notchainprecedence,(return_er,er_triage,)),(respondedexistence,(er_sepsis_triage,er_triage,))))).
root((or,(or,(alternateprecedence,(admission_nc,return_er,)),(notchainprecedence,(release_a,er_sepsis_triage,))),(and,(notchainprecedence,(er_sepsis_triage,return_er,)),(notchainresponse,(er_sepsis_triage,return_er,))))).
root((and,(and,(precedence,(er_registration,return_er,)),(notprecedence,(release_a,iv_antibiotics,))),(or,(notchainresponse,(release_a,lacticacid,)),(notprecedence,(iv_antibiotics,er_sepsis_triage,))))).
root((or,(and,(respondedexistence,(crp,er_registration,)),(choice,(er_sepsis_triage,release_a,))),(and,(respondedexistence,(iv_liquid,er_sepsis_triage,)),(alternateprecedence,(er_registration,release_a,))))).
root((and,(or,(alternateprecedence,(er_triage,return_er,)),(choice,(lacticacid,er_triage,))),(or,(respondedexistence,(iv_liquid,crp,)),(notchainresponse,(return_er,er_sepsis_triage,))))).
root((and,(and,(respondedexistence,(lacticacid,er_registration,)),(choice,(admission_nc,er_sepsis_triage,))),(and,(existence1,(er_triage,)),(notchainprecedence,(admission_nc,er_registration,))))).
root((or,(and,(respondedexistence,(leucocytes,er_triage,)),(choice,(er_triage,er_sepsis_triage,))),(or,(notchainresponse,(release_a,er_triage,)),(notchainresponse,(er_registration,admission_nc,))))).
root((and,(and,(choice,(er_registration,return_er,)),(choice,(return_er,er_registration,))),(or,(notresponse,(release_a,er_registration,)),(notprecedence,(return_er,er_triage,))))).
root((or,(and,(notchainresponse,(release_a,iv_liquid,)),(notresponse,(return_er,er_registration,))),(and,(notchainresponse,(er_sepsis_triage,release_a,)),(choice,(crp,er_registration,))))).
root((or,(and,(notresponse,(release_a,er_triage,)),(choice,(lacticacid,er_sepsis_triage,))),(and,(choice,(release_a,er_sepsis_triage,)),(notchainprecedence,(return_er,iv_antibiotics,))))).
root((and,(or,(choice,(er_registration,er_sepsis_triage,)),(choice,(er_sepsis_triage,er_registration,))),(and,(existence1,(er_registration,)),(notchainprecedence,(iv_liquid,return_er,))))).
root((and,(or,(respondedexistence,(release_a,er_triage,)),(respondedexistence,(iv_liquid,leucocytes,))),(or,(choice,(iv_antibiotics,er_triage,)),(respondedexistence,(er_registration,er_triage,))))).
root((or,(and,(notprecedence,(release_a,admission_nc,)),(notchainresponse,(iv_antibiotics,er_sepsis_triage,))),(and,(notchainprecedence,(release_a,admission_nc,)),(notchainprecedence,(er_registration,return_er,))))).
root((and,(and,(notchainresponse,(er_triage,admission_nc,)),(notchainresponse,(return_er,leucocytes,))),(or,(notchainresponse,(return_er,er_triage,)),(notchainprecedence,(return_er,admission_nc,))))).
root((and,(or,(notchainresponse,(return_er,iv_liquid,)),(notchainprecedence,(iv_antibiotics,er_sepsis_triage,))),(or,(choice,(er_sepsis_triage,leucocytes,)),(precedence,(er_registration,admission_nc,))))).
root((or,(or,(notprecedence,(return_er,er_sepsis_triage,)),(choice,(admission_nc,er_triage,))),(or,(choice,(er_registration,iv_antibiotics,)),(notchainprecedence,(er_registration,iv_antibiotics,))))).
root((or,(or,(notchainprecedence,(release_a,er_triage,)),(notchainprecedence,(return_er,release_a,))),(or,(choice,(er_registration,crp,)),(respondedexistence,(iv_antibiotics,er_sepsis_triage,))))).
root((and,(and,(notchainprecedence,(return_er,er_sepsis_triage,)),(choice,(er_registration,lacticacid,))),(or,(choice,(crp,er_triage,)),(notchainprecedence,(admission_nc,return_er,))))).
root((and,(or,(choice,(lacticacid,er_registration,)),(notresponse,(return_er,iv_liquid,))),(and,(choice,(crp,er_sepsis_triage,)),(notprecedence,(release_a,er_sepsis_triage,))))).
root((or,(and,(notprecedence,(return_er,iv_liquid,)),(notresponse,(return_er,iv_antibiotics,))),(and,(precedence,(er_triage,release_a,)),(choice,(er_triage,crp,))))).
root((and,(and,(notprecedence,(return_er,release_a,)),(alternateprecedence,(er_registration,return_er,))),(and,(respondedexistence,(iv_liquid,er_triage,)),(notchainprecedence,(release_a,iv_antibiotics,))))).
root((and,(or,(respondedexistence,(return_er,admission_nc,)),(precedence,(admission_nc,return_er,))),(and,(notchainprecedence,(lacticacid,return_er,)),(notchainresponse,(return_er,iv_antibiotics,))))).
root((or,(or,(notchainresponse,(return_er,release_a,)),(notchainresponse,(er_triage,return_er,))),(or,(respondedexistence,(iv_antibiotics,leucocytes,)),(precedence,(er_triage,admission_nc,))))).
root((or,(or,(notresponse,(release_a,iv_liquid,)),(notchainprecedence,(release_a,lacticacid,))),(or,(notchainprecedence,(return_er,leucocytes,)),(precedence,(er_triage,return_er,))))).
root((or,(and,(notchainresponse,(return_er,admission_nc,)),(choice,(er_triage,admission_nc,))),(or,(notprecedence,(release_a,er_registration,)),(notchainresponse,(release_a,iv_antibiotics,))))).
