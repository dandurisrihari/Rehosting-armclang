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

# IR files get from ../ll_files/
IR_FILES = $(wildcard ../ll_files/*.ll)
# Optimized IR files store in ../optimized_ll_files/

OPTIMIZED_IR_FILES = $(patsubst ../ll_files/%.ll, ../optimized_ll_files/%_optimized.ll, $(IR_FILES))

# Default target
all: $(PASS_SHARED_OBJECT) run-opt

# Compiles the LLVM pass
$(PASS_SHARED_OBJECT): $(PASS_OBJECT)
	$(CXX) -o $@ $(LDFLAGS) $^ $(LIBS)

$(PASS_OBJECT): $(PASS_NAME).cpp
	$(CXX) -o $@ -c $^ $(CXXFLAGS) -I$(INCLUDES)

# Applies the pass using opt on all .ll files in the current directory
run-opt: $(PASS_SHARED_OBJECT) $(OPTIMIZED_IR_FILES)

# Optimized IR files
../optimized_ll_files/%_optimized.ll: ../ll_files/%.ll
	opt-17 -strip-debug -S -load-pass-plugin=./$(PASS_SHARED_OBJECT) -passes=$(PASS_NAME) $< -o $@

# Clean the build
clean:
	rm -f $(PASS_OBJECT) $(PASS_SHARED_OBJECT)

.PHONY: all run-opt clean
