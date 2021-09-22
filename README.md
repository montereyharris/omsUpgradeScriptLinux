# omsUpgradeScriptLinux
This repo is for a shell script to update OMS Agent simply in Linux machines. This was built to resolve OMIGOD vulnerability. 

This shell script is derived from Microsoft's default install script located [here](https://raw.githubusercontent.com/Microsoft/OMS-Agent-for-Linux/master/installer/scripts/onboard_agent.sh).

For functionatity information pleae review this doc from Microsoft [here](https://docs.microsoft.com/en-us/azure/azure-monitor/agents/agent-linux).

# Instructions

Run the following command in shell. This will download the shell script and latest agent file as of this commit. It will then run upgrade sequence.

```
wget https://raw.githubusercontent.com/montereyharris/omsUpgradeScriptLinux/main/omsagentupgrade.sh && sh omsAgentUpgrade.sh
```
