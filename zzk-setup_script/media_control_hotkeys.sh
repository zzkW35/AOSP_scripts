#!bin/bash

# This script copy-pastes the following configuration of F4, F5, F6 keys into ~/.config/khotkeysrc
# which is a file where KDE stores custom shortcuts

echo "[Data]
DataCount=1

[Data_1]
Comment=Media control with function keys
DataCount=4
Enabled=true
Name=Media control with function keys
SystemGroup=2
Type=ACTION_DATA_GROUP

[Data_1Conditions]
Comment=
ConditionsCount=0

[Data_1_1]
Comment=KMenuEdit Global Shortcuts
DataCount=1
Enabled=true
Name=KMenuEdit
SystemGroup=1
Type=ACTION_DATA_GROUP

[Data_1_1Conditions]
Comment=
ConditionsCount=0

[Data_1_1_1]
Comment=Comment
Enabled=true
Name=Search
Type=SIMPLE_ACTION_DATA

[Data_1_1_1Actions]
ActionsCount=1

[Data_1_1_1Actions0]
CommandURL=http://google.com
Type=COMMAND_URL

[Data_1_1_1Conditions]
Comment=
ConditionsCount=0

[Data_1_1_1Triggers]
Comment=Simple_action
TriggersCount=1

[Data_1_1_1Triggers0]
Key=
Type=SHORTCUT
Uuid={d03619b6-9b3c-48cc-9d9c-a2aadb485550}

[Data_1_2]
Comment=Play/Pauses any media which is currently online\s
Enabled=true
Name=playerctl play-pause
Type=SIMPLE_ACTION_DATA

[Data_1_2Actions]
ActionsCount=1

[Data_1_2Actions0]
CommandURL=playerctl play-pause
Type=COMMAND_URL

[Data_1_2Conditions]
Comment=
ConditionsCount=0

[Data_1_2Triggers]
Comment=Simple_action
TriggersCount=1

[Data_1_2Triggers0]
Key=Media Play
Type=SHORTCUT
Uuid={5f672695-61f2-46ab-8a32-4aae117282ee}

[Data_1_3]
Comment=Goes to the previous track of any media which is currently online
Enabled=true
Name=playerctl previous
Type=SIMPLE_ACTION_DATA

[Data_1_3Actions]
ActionsCount=1

[Data_1_3Actions0]
CommandURL=playerctl previous
Type=COMMAND_URL

[Data_1_3Conditions]
Comment=
ConditionsCount=0

[Data_1_3Triggers]
Comment=Simple_action
TriggersCount=1

[Data_1_3Triggers0]
Key=Media Previous
Type=SHORTCUT
Uuid={7ef7b286-80a8-4d28-a3cc-8fd2fd45551b}

[Data_1_4]
Comment=Goes to the next track of any media which is currently online\s
Enabled=true
Name=playerctl next
Type=SIMPLE_ACTION_DATA

[Data_1_4Actions]
ActionsCount=1

[Data_1_4Actions0]
CommandURL=playerctl next
Type=COMMAND_URL

[Data_1_4Conditions]
Comment=
ConditionsCount=0

[Data_1_4Triggers]
Comment=Simple_action
TriggersCount=1

[Data_1_4Triggers0]
Key=Media Next
Type=SHORTCUT
Uuid={5e10ecde-29b8-4490-b1cc-2dfc0905a0a8}

[Main]
AllowMerge=false
ImportId=media-hotkeys
Version=2" >> ~/.config/khotkeysrc