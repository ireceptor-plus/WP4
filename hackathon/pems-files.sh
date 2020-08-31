# permissions for hackathon

if [ -z "$1" ]; then
    echo "Missing user parameter"
    exit 1
fi

# irplus directories
tapis files pems grant agave:///irplus $1 ALL
tapis files pems grant agave:///irplus/data $1 ALL
tapis files pems grant agave:///irplus/apps $1 ALL
tapis files pems grant agave:///irplus/apps/toy $1 ALL
tapis files pems grant agave:///irplus/images $1 ALL

# irplus data files

# irplus images
tapis files pems grant agave:///irplus/images/immcantation_suite-4.1.0.sif $1 ALL
tapis files pems grant agave:///irplus/images/sonar-latest.sif $1 ALL
tapis files pems grant agave:///irplus/images/partis-latest.sif $1 ALL

# irplus-ls5 execution system
tapis systems roles grant irplus-ls5.tacc.utexas.edu $1 OWNER
