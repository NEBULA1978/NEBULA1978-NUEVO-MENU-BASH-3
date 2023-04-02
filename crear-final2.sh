#!/bin/bash

# crear al final .sh
# for filename in /home/next/Música/bash-master/00_tutorial; do mv "$filename" "${filename%.00_tutorial*}.sh"; done
for file in *; do mv "$file" "${file}.sh"; done



# eliminar .sh
for file in *.sh; do mv "$file" "${file%.sh}"; done
