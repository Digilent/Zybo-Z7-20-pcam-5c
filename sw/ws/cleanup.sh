# This script is useful for cleaning up the 'project'
# directory of a Digilent Vivado-project git repository
###
# Run the following command to change permissions of
# this 'cleanup' file if needed:
# chmod u+x cleanup.sh
###
script_dir=$(dirname ${BASH_SOURCE[0]})
# Remove directories/subdirectories
find $script_dir -mindepth 1 -type d -exec rm -rf {} +
# Remove any other files than:
find $script_dir -type f ! -name 'cleanup.sh' \
               ! -name 'cleanup.cmd' \
               -exec rm -rf {} +
