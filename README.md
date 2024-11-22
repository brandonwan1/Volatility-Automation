# Volatility-Automation
A Bash script to automate the execution of Volatility, a memory forensics framework, with various arguments. Designed to streamline memory dump analysis by providing efficient command-line workflows.

## Pre-requisites
- Python 3.8 or above
- Volatility 3.0 dependencies - Refer to the [volatility3](https://github.com/volatilityfoundation/volatility3) repository. Install using the requirements.txt file for full functionality. If you wish, install them in a Python virtual environment to avoid conflicts.

## Downloading this tool
Clone this repository:

```
git clone https://github.com/brandonwan1/Volatility-Automation
```
## Usage
1) Place the memory dump files in the same directory as the script.

2) Using a text editor, make and the following changes to the script:

    - ```venv_dir``` - Edit the value to the directory of your virtual environment. Alternatively, comment this line out.

    - ```alias vol``` -  Edit the second argument of the alias to point to the directory of the volatility script (vol.py).
    
3) Save the changes.

4) Ensure the script is executable:
   ```
   chmod +x Volatility_Automate.sh
    ```

6) Execute the script from a bash shell environment (e.g., Git Bash).

7) Input the name of the specific memory dump you wish to analyze.

8) Check the ```output``` directory for resulting files.

## Examples

Execution of script:
![Recording 2024-11-22 at 00 34 54](https://github.com/user-attachments/assets/627cc464-6ed8-4426-83f3-988c6754c343)

Output files after script execution completes:

![image](https://github.com/user-attachments/assets/c8b22d20-ef35-43c8-bad7-838df360982e)
