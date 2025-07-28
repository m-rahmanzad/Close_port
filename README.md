# 🔍 Port Scanner & Killer - Windows Batch Script

This is a lightweight interactive **Windows batch script** that helps users inspect which processes are listening on a given **TCP port** and optionally **kill them**. It’s useful for developers, network admins, and anyone dealing with port conflicts or debugging server issues on Windows.

---

## ⚙️ Features

- 🧾 List all active TCP listening ports
- 🔎 Check which process (PID) is using a specific port
- 📋 Display the process name and details
- 💀 Optionally kill the process by its PID
- 🪟 Works entirely in the Windows Command Prompt (no external tools needed)

---

## 🚀 How to Use

1. **Download the script** or copy the code into a `.bat` file (e.g., `port-killer.bat`).
2. **Run the script as Administrator** (required for `taskkill` to work properly).
3. Use the menu:
   - Type a port number (e.g. `8080`) to scan.
   - Type `list` to show all active listening ports.
   - Type `quit` to exit.

4. If a process is found using that port, you’ll be asked if you want to terminate it.

---

## 📌 Example

```sh
====== Active TCP Ports ======
[...list of ports...]

Enter a port number (or type 'quit' to exit or type list to show list again): 5000

Scanning for processes using port 5000 ...
Found PID: 12345
Image Name     PID     Session Name   ...
python.exe     12345   Console        ...

Do you want to kill this process? (y/n): y
Process 12345 killed.
