#/bin/bash
#
# TODO: name your issue feature!
# TODO: BUG when hitting ctrl d without entry first it doesnt keep input
#
HPRPL="\033[1;37;45m"
HBLU="\033[1;37;44m"
HYEL="\033[1;31m"
PRPL="\033[1;95m"
BLU="\033[1;94m"
YEL="\033[1;40m"
UND="\033[0;4m"
NC="\033[0;m"
INFO_USER="${YEL}Hit${NC}${HYEL} <Ctrl-D> ${NC}${YEL}when you're finished:${NC}"

printf "\n  ╔═══════════════════════ I ${PRPL}<3${NC} ECPGPP ═════════F═R═A═M═E═R═══╗\n"
printf "  ║                ${PRPL} Welcome to ◈ F R A M E R ◈${NC}                ║\n" 
printf "  ║        ${PRPL} Write friendly specs you'll love to share.   ${NC}     ║\n" 
printf "  ╚═══F═R═A═M═E═R═════════════════════════════════════════════╝\n"

### 

arrDescription=()
arrUnwantedBehavior=()
arrSteps=()
arrDesiredBehavior=()
arrConfig=()
arrLeads=()

### 
printf "    ${HPRPL}# Context:${NC}\n" 
# ## What is the problem section
printf "    ${HBLU}## What is the problem?${NC}\n" 
printf "    Describe your problem here.\n" 
printf "    ${INFO_USER}\n" 

while read -p $'    \e[0;4mDescription:\e[0m\e[3m ' description
do
	arrDescription+=($description)
	arrDescription+=("\n")
done

# ### Unwanted Behavior section
printf "\e[0m\n    ${BLU}### Unwanted behavior:${NC}\n" 
printf "    ${INFO_USER}\n"

while read -p $'    \e[0;4mUnwanted behavior:\e[0m\e[3m ' unwantedbehavior
do
	arrUnwantedBehavior+=($unwantedbehavior)
	arrUnwantedBehavior+=("\n")
done

# ### Steps to reproduce the problem
printf "\e[0m\n    ${BLU}### Steps to reproduce the problem:${NC}\n" 
printf "    List format, simply write each item in order\n" 
printf "    ${INFO_USER}\n"

i=1
while read -p $'    \e[0;4mSteps:\e[0m\e[3m ' steps
do
	arrSteps+=($i. )
	arrSteps+=($steps)
	arrSteps+=("\n")
	((i++))
done

# ### Desired Behavior section
printf "\e[0m\n    ${BLU}### Desired behavior:${NC}\n" 
printf "    (This section is optional)\n" 
printf "    ${INFO_USER}\n"

while read -p $'    \e[0;4mDesired behavior:\e[0m\e[3m ' desiredbehavior
do
	arrDesiredBehavior+=($desiredbehavior)
	arrDesiredBehavior+=("\n")
done

# ## Current configuration section
printf "\e[0m\n    ${HBLU}## Current configuration & environment:${NC}\n" 
printf "    List format, simply write each item.\n" 
printf "    ${INFO_USER}\n"

while read -p $'    \e[0;4mCurrent configuration:\e[0m\e[3m ' config
do
	arrConfig+=(+ )
	arrConfig+=($config)
	arrConfig+=("\n")
done

# # Potential leads section
printf "\e[0m\n    ${HPRPL}# Potential leads:${NC}\n" 
printf "    (This section is optional)\n" 
printf "    ${INFO_USER}\n"

while read -p $'    \e[0;4mPotential leads:\e[0m\e[3m ' leads
do
	arrLeads+=($leads)
	arrLeads+=("\n")
done

### Formating file
echo "# Context:" > ./issue.raw
echo "## What is the problem?" >> ./issue.raw
echo ${arrDescription[@]} >> ./issue.raw
echo "### Unwanted behavior:" >> ./issue.raw
echo ${arrUnwantedBehavior[@]} >> ./issue.raw
echo "### Steps to reproduce the problem:" >> ./issue.raw
echo ${arrSteps[@]} >> ./issue.raw
echo "### Desired behavior:" >> ./issue.raw
echo ${arrDesiredBehavior[@]} >> ./issue.raw
echo "## Current configuration & environment:" >> ./issue.raw
echo ${arrConfig[@]} >> ./issue.raw
echo "# Potential leads:" >> ./issue.raw
echo ${arrLeads[@]} >> ./issue.raw

sed 's/\\n/\n/g' issue.raw  > issue.md

printf "\n  ╔════════════════════ Here's your file ${PRPL}<3${NC} ════F═R═A═M═E═R═══╗\n"
printf "  ║${PRPL} Just check your issue.md file and use it in your project!${NC} ║\n"
printf "  ╚═══F═R═A═M═E═R═════════════════════════════════════════════╝\n"


