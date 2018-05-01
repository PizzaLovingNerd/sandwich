import os

if os.geteuid() == 0:
    print("\nGo make me a sandwich")
    print("Okay Boss")
    print("\nYou are logged in as root\n")
