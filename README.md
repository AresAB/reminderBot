Basic bash script for making a notification every x number of seconds, utilizes a script I made previously called flagHandler.sh

# Use:

    `$ reminderBot 30` -> Opens up notepad with a reminder after 30 seconds

    `Repeat? [y/n]` -> After each reminder, it will ask if you want it to repeat

# flags:

### `-r | --repeat` -> Skips the repeat message and will not stop repeating until forcibly stopped

ex:

`$ reminderBot -r 30` -> Opens up a notepad with a reminder after 30 seconds, repeats after notepad is closed


### `-m | --minute` -> Converts the first input as minutes, and allows for a second input which will be treated as seconds

ex:

`$ reminderBot -m 10` -> Opens up a notepad with a reminder after 10 minutes

`Repeat? [y/n]` -> After each reminder, it will ask if you want it to repeat

`$ reminderBot -m 10 30` -> Opens up a notepad with a reminder after 10 minutes and 30 seconds

`Repeat? [y/n]` -> After each reminder, it will ask if you want it to repeat