#!/bin/bash python

import i3ipc
import time

i3 = i3ipc.Connection()

def borderfocus(i3, event):
	i3.command("border pixel 2")
	time.sleep(0.25)
	i3.command("border pixel 0")
	time.sleep(0.25)

i3.on("window::focus", borderfocus)
i3.main()

