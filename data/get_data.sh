#!/bin/bash

# Data from supplementary materials of the article:
# 
# Kim, S., Potter, K., Craigmile, P. F., Peruggia, M., & Van Zandt, T. (2017). A
# Bayesian Race Model for Recognition Memory. Journal of the American Statistical
# Association, 112(517), 77-91.
# 
# Available at:  https://github.com/petercraigmile/BayesianRaceModel
#
# From supplementary materials:
# "A total of 32 subjects participated in the experiment, 12 in a pilot study and 20 in the final study."
# 
# The data from the main and pilot studies are in separate files.
# 
# The following code downloads these files and renames them, and checks their contents.


commit=02989c8589c9e97714e2fae2f7716e1f7fa8a964
main_data_url=https://raw.githubusercontent.com/petercraigmile/BayesianRaceModel/$commit/Data/main.csv
pilot_data_url=https://raw.githubusercontent.com/petercraigmile/BayesianRaceModel/$commit/Data/pilot.csv
main_data_filename=BayesRaceModel_main.csv
pilot_data_filename=BayesRaceModel_pilot.csv

wget $main_data_url -O $main_data_filename
wget $pilot_data_url -O $pilot_data_filename

# Do a file integrity check
md5sum -c md5sum_check.txt
