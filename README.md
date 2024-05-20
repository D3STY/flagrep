# Flagrep

Flagrep is a simple tool for searching flags on Labs like Vulnlab & HackTheBox. 
It's available in both PowerShell and Bash.

## Usage

### PowerShell Version

- Run the script using the following command:

```powershell
.\flagrep.ps1 C:\Path\to\Folder"
```
```
PS ./flagrep.ps1 /home/desty/flagrep/
Found 'HTB{75547335623sadasdadas04846999581}' in /home/desty/flagrep/HTB/user.txt
Found 'VL{T3sT_fl4g_1337}' in /home/desty/flagrep/VL/flag.txt
```

Replace `C:\Path\to\Folder` with the path to the folder you want to search for flags

### Bash Version

- Run the script using the following command:

```bash
.\flagrep.sh /path/to/folder
```
```
./flagrep.sh .
./HTB/user.txt:1:HTB{75547335623sadasdadas04846999581}
./VL/flag.txt:1:VL{T3sT_fl4g_1337}
```

Replace `/path/to/folder` with the path to the folder you want to search for flags.

## Customization

You can customize the tool by modifying the regular expressions in the respective scripts. Open the `flagrep.ps1` file for the PowerShell version or `flagrep.sh` for the Bash version with a text editor and adjust the `regex_pattern` variable according to your requirements.