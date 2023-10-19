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
IR_FILES = $(filter-out %_optimized.ll,$(wildcard *.ll))
OPTIMIZED_IR_FILES = $(patsubst %.ll,%_optimized.ll,$(IR_FILES))

# Default target
all: $(PASS_SHARED_OBJECT) run-opt

# Compiles the LLVM pass
$(PASS_SHARED_OBJECT): $(PASS_OBJECT)
	$(CXX) -o $@ $(LDFLAGS) $^ $(LIBS)

$(PASS_OBJECT): $(PASS_NAME).cpp
	$(CXX) -o $@ -c $^ $(CXXFLAGS) -I$(INCLUDES)

# Applies the pass using opt on all .ll files in the current directory
run-opt: $(PASS_SHARED_OBJECT) $(OPTIMIZED_IR_FILES)

%_optimized.ll: %.ll
	opt-17 -S -load-pass-plugin=./$(PASS_SHARED_OBJECT) -passes=$(PASS_NAME) $< -o $@

# Clean the build
clean:
	rm -f $(PASS_OBJECT) $(PASS_SHARED_OBJECT) *_optimized.ll

.PHONY: all run-opt clean
