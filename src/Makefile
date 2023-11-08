# Variables
LLVM_CONFIG = llvm-config-17
CXX = clang++-17
CXXFLAGS = -fPIC `$(LLVM_CONFIG) --cxxflags`
LDFLAGS = `$(LLVM_CONFIG) --ldflags` -shared -Wl,-O1
LIBS = `$(LLVM_CONFIG) --libs core`
INCLUDES = `$(LLVM_CONFIG) --includedir`
PASS_NAME = RemoveArchDepInfo
PASS_OBJECT = $(PASS_NAME).o
PASS_SHARED_OBJECT = $(PASS_NAME).so
ARM_CLANG_CXX = armclang

# If no directories output, obj, optimized_cleaned_ll_files, optimized_ll_files create them
$(shell mkdir -p ../output ../output/obj ../output/optimized_cleaned_ll_files ../output/optimized_ll_files)

# IR files get from ../ll_files/
IR_FILES = $(wildcard ../ll_files/*.ll)
# Optimized IR files store in ../optimized_ll_files/
OPTIMIZED_IR_FILES = $(patsubst ../ll_files/%.ll, ../output/optimized_ll_files/%_optimized.ll, $(IR_FILES))

# Default target
all: part1 part2

part1: $(PASS_SHARED_OBJECT) run-opt

# Compiles the LLVM pass
$(PASS_SHARED_OBJECT): $(PASS_OBJECT)
	$(CXX) -o $@ $(LDFLAGS) $^ $(LIBS)

$(PASS_OBJECT): $(PASS_NAME).cpp
	$(CXX) -o $@ -c $^ $(CXXFLAGS) -I$(INCLUDES)

# Applies the pass using opt on all .ll files in the current directory
run-opt: $(PASS_SHARED_OBJECT) $(OPTIMIZED_IR_FILES)
# Generate IR files
	$(shell cd ../ll_files/ && $(ARM_CLANG_CXX) -Woverride-module --target=arm-arm-none-eabi -S -emit-llvm ../bc_files/*.bc  . && cd ../)

# Optimized IR files
../output/optimized_ll_files/%_optimized.ll: ../ll_files/%.ll
	opt-17 -strip-debug -S -load-pass-plugin=./$(PASS_SHARED_OBJECT) -passes=$(PASS_NAME) $< -o $@

part2: ll_opt_clean obj bin.elf

ll_opt_clean:
	# run python3 script
		python3 ./clean.py
obj:
	# for all .ll files in optimized_cleaned_ll_files, run llc-17 and store objs in ../obj folder
		for file in ../output/optimized_cleaned_ll_files/*.ll; do \
			echo "obj: " $$file; \
			llc-17 -relocation-model=pic -filetype=obj -march=x86 $$file -o ../output/obj/$$(basename $$file .ll).o; \
		done

	# compile externalLinking.c to externalLinking.o
		clang-17 -fPIC -m32 -c externalLinking.c -o ../output/obj/externalLinking.o

bin.elf: obj
	rm -f \
	../output/obj/armlink_symbol_steering_optimized_cleaned.o \
	../output/obj/main_weak_optimized_cleaned.o 
	
	clang-17 -fPIE -m32 ../output/obj/*.o ../posix/libzephyr.a -pthread -o ../output/elf/bin.elf

clean:
	rm -f ../ll_files/*.ll ../output/obj/*o ../output/elf/*.elf ../output/optimized_ll_files/*.ll ../output/optimized_cleaned_ll_files/*.ll

.PHONY: all run-opt clean part1 part2