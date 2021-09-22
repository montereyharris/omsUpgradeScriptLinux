# Values to be updated upon each new release
GITHUB_RELEASE_X64="https://github.com/microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_v1.13.40-0/"
GITHUB_RELEASE_X86="https://github.com/Microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_v1.12.15-0/"

BUNDLE_X64="omsagent-1.13.40-0.universal.x64.sh"
BUNDLE_X86="omsagent-1.12.15-0.universal.x86.sh"
# We need to use sudo for commands in the following block, if not running as root
SUDO=''
if [ "$EUID" != 0 ]; then
    SUDO='sudo'
fi

# Download, install, and onboard OMSAgent for Linux, depending on architecture of machine
if [ $(uname -m) = 'x86_64' ]; then
    # x64 architecture
    wget -O ${BUNDLE_X64} ${GITHUB_RELEASE_X64}${BUNDLE_X64} && $SUDO sh ./${BUNDLE_X64} --upgrade
else
    # x86 architecture
    echo "Note that there will be no further releases of the 32-bit OMS Linux agent."
    echo "The final version with 32-bit support is 1.12.15-0, which will now be installed."
    wget -O ${BUNDLE_X86} ${GITHUB_RELEASE_X86}${BUNDLE_X86} && $SUDO sh ./${BUNDLE_X86} --upgrade
fi
#Output OMI version 
/opt/omi/bin/omiserver -v

#Manual command wget -O "https://github.com/microsoft/OMS-Agent-for-Linux/releases/download/OMSAgent_v1.13.40-0/omsagent-1.13.40-0.universal.x64.sh" && sudo omsagent-1.13.40-0.universal.x64.sh --upgrade 