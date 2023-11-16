import json
import re
import os

# Create a list of flags to remove
flags_to_remove = ['-fno-save-temps', '-c', '-fnoommon', '-fdiagnosticsolor=always', '-mfp16-format=ieee', '-fno-reorder-functions', '-isystem /home/sri/zmk/zephyr/lib/libc/minimal/include', '-xassembler-withpp']  # Add more flags to this list as needed

# Create a list of cflags to add
cflags_to_add = ['-S -save-temps', '--target=arm-arm-none-eabi', '-I/usr/include']  # Add more cflags to this list as needed

# Load the JSON file
with open('/home/sri/zmk/app/build/compile_commands.json') as f:
    data = json.load(f)

# Open the Makefile for writing
with open('Makefile', 'w') as f:
    # Add all: in the Makefile
    f.write('all:\n')
    for element in data:
        # Replace the compiler with armclang
        command = re.sub(r'/home/sri/zephyr-sdk-0.16.3/arm-zephyr-eabi/bin/arm-zephyr-eabi-gcc', 'armclang', element['command'])

        # Remove the flags in the remove list
        for flag in flags_to_remove:
            command = command.replace(flag, '')

        # Add the cflags in the add list
        for flag in cflags_to_add:
            command = command + ' ' + flag

        # Remove -o and the output path
        command = re.sub(r'-o .+?.obj', '', command)

        # replace all occurances of isystem follwed by path, with '-isystem /opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include'
        command = re.sub(r'-isystem .+?/include', '-isystem /opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include', command)
        
        #if a element conatin /home/sri/zmk/zephyr/lib/libc/* remove entire element from makefile
        if re.search(r'/home/sri/zmk/zephyr/lib/libc/*', command):
            continue

        # Write the modified command to the Makefile with a tab indent
        f.write(f'\t{command}\n')