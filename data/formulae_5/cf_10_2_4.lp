root((or,(and,(respondedexistence,(admission_nc,er_triage,)),(notchainresponse,(release_a,er_triage,))),(and,(choice,(er_registration,release_a,)),(choice,(leucocytes,er_triage,))))).
root((and,(or,(choice,(er_triage,er_sepsis_triage,)),(notchainprecedence,(return_er,release_a,))),(and,(respondedexistence,(admission_nc,er_registration,)),(notchainresponse,(release_a,er_registration,))))).
root((or,(or,(notchainresponse,(return_er,admission_nc,)),(choice,(er_registration,admission_nc,))),(and,(notresponse,(return_er,er_registration,)),(notprecedence,(release_a,er_triage,))))).
root((or,(and,(respondedexistence,(iv_antibiotics,crp,)),(notprecedence,(return_er,er_triage,))),(or,(respondedexistence,(iv_liquid,leucocytes,)),(respondedexistence,(er_registration,er_triage,))))).
root((and,(and,(notchainresponse,(release_a,iv_liquid,)),(notprecedence,(return_er,release_a,))),(or,(choice,(return_er,er_registration,)),(precedence,(er_triage,admission_nc,))))).
root((or,(and,(choice,(lacticacid,er_sepsis_triage,)),(notchainresponse,(return_er,release_a,))),(or,(choice,(crp,er_registration,)),(respondedexistence,(return_er,er_triage,))))).
root((and,(or,(precedence,(er_registration,admission_nc,)),(alternateprecedence,(er_triage,return_er,))),(and,(alternateprecedence,(er_sepsis_triage,iv_antibiotics,)),(notprecedence,(return_er,er_sepsis_triage,))))).
root((and,(and,(choice,(er_triage,lacticacid,)),(choice,(er_registration,leucocytes,))),(or,(alternateprecedence,(admission_nc,return_er,)),(notchainresponse,(admission_nc,return_er,))))).
root((and,(or,(choice,(er_triage,iv_liquid,)),(choice,(lacticacid,er_triage,))),(or,(notchainprecedence,(release_a,er_triage,)),(notprecedence,(release_a,admission_nc,))))).
root((or,(or,(notchainprecedence,(return_er,iv_antibiotics,)),(choice,(iv_liquid,er_triage,))),(and,(notchainprecedence,(lacticacid,return_er,)),(notchainprecedence,(release_a,lacticacid,))))).
