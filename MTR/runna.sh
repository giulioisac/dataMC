#!/bin/bash

# k=0.1
# 
# 
# for var in  "R9" "S4" "SigmaIeIe" "EtaWidth" "PhiWidth" "CovarianceIphiIphi" "SigmaRR" "CovarianceIetaIphi" "PhoIso03" "ChIso03" "ChIso03worst";
# do
#     echo Jobs for $var
#     for i in `seq 1 9`;
#     do
# 	q=`echo "$k*$i"|bc`
# 	
# 	qsub jobba.sh "mc"   $var $q 0 2000000 3 9 "EB" -q short.q
# 	qsub jobba.sh "mc"   $var $q 0 2000000 3 9 "EE" -q short.q
# 	qsub jobba.sh "data" $var $q 0 -1      3 9 "EB" -q short.q 
# 	qsub jobba.sh "data" $var $q 0 -1      3 9 "EE" -q short.q 
# 
# 	done
# done

qsub jobba.sh "data" ChIso03 0.9 0 -1      3 9 "EB" -q short.q 
