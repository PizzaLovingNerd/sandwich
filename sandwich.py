import os

if os.geteuid() == 0:
    print("\nGo make me a sandwich")
    print("\nOkay Boss")
    print("\nYou are logged in as root or you are using sudo\n")
else:
    print("\nGo make me a sandwich")
    print("\nYour not the boss of me, make yourself a sandwich")
    print("\nYou are not logged in as root or you are not using sudo\n")
    
