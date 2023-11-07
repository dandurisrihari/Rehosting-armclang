import os
import re

# get input _optimized.ll files from ../optimized_ll_files/
input_files = os.listdir('../output/optimized_ll_files/')

# output files to ../optimized_cleaned_ll_files/
output_path = '../output/optimized_cleaned_ll_files/'

# clean the input files remove line that have attributes #
# store them as _cleaned.ll files in ../optimized_cleaned_ll_files/
for file in input_files:
    with open('../output/optimized_ll_files/' + file, 'r') as f:
        lines = f.readlines()
        with open(output_path + file.split('.')[0] + '_cleaned.ll', 'w') as f2:
            for line in lines:
                # if line start with attributes # or ! skip it
                if line.startswith('attributes #') or line.startswith('!'):
                    continue
                # remove any words from line that start with ", !"
                # write the line to the output file
                line = re.sub(', !.*', '', line)
                f2.write(line)