# deploy_agent_Quentin712

## What is this?
This is a shell script I built that sets up a student attendance tracker project automatically. Instead of creating every folder and file by hand, you just run the script, type a name, and everything is ready.

## What happens when you run it
- It asks you for a project name and creates a folder called `attendance_tracker_{name}`
- It copies all the source files into the right places
- It asks if you want to change the warning and failure attendance thresholds
- It checks if python3 is on your machine
- It confirms the folder structure was built correctly
- If you press Ctrl+C while it is running, it saves everything into a zip archive and cleans up the incomplete folder

## What you need before running
- A bash terminal
- python3 installed on your machine

## Steps to run it

Clone the repo:
```bash
git clone https://github.com/Quentin712/deploy_agent_Quentin712.git
```

Go into the folder:
```bash
cd deploy_agent_Quentin712
```

Make the script executable:
```bash
chmod +x setup_project.sh
```

Run it:
```bash
./setup_project.sh
```

Type a name when it asks:
Enter a project name: v1

If you want to change the thresholds type yes and enter your values:
Do you want to update attendance thresholds? (yes/no): yes

Enter new Warning threshold (default 75): 80

Enter new Failure threshold (default 50): 60

## How to trigger the archive

Just press Ctrl+C while the script is running. It will:
- Pack the incomplete folder into a file called `attendance_tracker_{name}_archive.tar.gz`
- Delete the incomplete folder so your workspace stays clean

## Check everything was created
Once the script finishes run this to confirm the folder structure is correct:
```bash
tree attendance_tracker_v1
```
