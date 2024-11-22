venv_dir=DIRECTORY_OF_VENV_WITH_DEPENDENCIES_HERE

source "$venv_dir"

alias vol='python VOLATILITY_SCRIPT_DIRECTORY_HERE'

out_dir=./output

# Create output directory if it doesn't exist
if [ ! -d "$out_dir" ]; then
    echo Creating output directory
    mkdir $out_dir
fi

read -rp 'Memory dump file to examine: ' file

if [ -f "$file" ]; then
    echo OS Info
    vol -f "$file" windows.info > "$out_dir"/win_info.txt

    # Suspicious processes
    echo Suspicious processes
    vol -f "$file" windows.malfind > "$out_dir"/malfind.txt

    # Process information
    echo Process info
    vol -r csv -f "$file" windows.pstree > "$out_dir"/pstree.csv
    vol -r csv -f "$file" windows.pslist > "$out_dir"/pslist.csv
    vol -r csv -f "$file" windows.psscan > "$out_dir"/psscan.csv

    # Command line information
    echo Cmdline info
    vol -r csv -f "$file" windows.cmdline > "$out_dir"/cmdline.csv

    # Network information
    echo Network info
    vol -r csv -f "$file" windows.netscan > "$out_dir"/windows.netscan.csv

    # UserAssist data from registry hive 
    echo UserAssist info
    vol -r csv -f "$file" windows.registry.userassist > "$out_dir"/windows.registry.userassist.csv

    # Virtual Address Descriptor Info
    echo VADInfo
    vol -r csv -f "$file" windows.vadinfo > "$out_dir"/windows.vadinfo.csv
else
    echo "$file" does not exist...

fi

read -n 1 -r -p "Press any key to exit..."
