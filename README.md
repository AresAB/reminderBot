Basic bash script for making a notification every x number of seconds, utilizes a script I made previously called flagHandler.sh

# Use:

    `$ reminderBot reminderText 30` -> Sends a windows notification with the text "reminderText" after 30 seconds

    `Repeat? [y/n]` -> After each notification, it will ask if you want it to repeat

# flags:

### `-r | --repeat` -> Skips the repeat message and will not stop repeating until forcibly stopped

ex:

`$ reminderBot -r message 30` -> Sends a windows notification with the text "message" after 30 seconds, repeats after notepad is closed


### `-m | --minute` -> Converts the first input as minutes, and allows for a third input which will be treated as seconds

ex:

`$ reminderBot -m message 10` -> Sends a windows notification with the text "message" after 10 minutes

`Repeat? [y/n]` -> After each notification, it will ask if you want it to repeat

`$ reminderBot -m message 10 30` -> Sends a windows notification with the text "message" after 10 minutes and 30 seconds

`Repeat? [y/n]` -> After each notification, it will ask if you want it to repeat