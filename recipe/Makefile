all: ll_opt_clean obj

# If no directories obj, optimized_cleaned_ll_files, optimized_ll_files 
# create them
$(shell mkdir -p ../obj ../optimized_cleaned_ll_files ../optimized_ll_files)
ll_opt_clean:
	# invoke the Makefile in ../llvm_pass/Makefile
		$(MAKE) -C ../llvm_pass
	# run python3 script
		python3 ./clean.py
obj:
	# for all .ll files in optimized_cleaned_ll_files, run llc-17 and store objs in ../obj folder
		for file in ../optimized_cleaned_ll_files/*.ll; do \
			echo "obj: " $$file; \
			llc-17 -filetype=obj $$file -o ../obj/$$(basename $$file .ll).o; \
		done

	# compile externalLinking.c to externalLinking.o
		clang-17 -c externalLinking.c -o ../obj/externalLinking.o

clean:
	$(MAKE) -C ../llvm_pass clean
	rm -f ../optimized_ll_files/*.ll ../optimized_cleaned_ll_files/*.ll ../obj/*.o *.ll
