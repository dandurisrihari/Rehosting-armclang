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
IR_FILE = assert.ll
OUTPUT_IR = output.ll

# Default target
all: $(PASS_SHARED_OBJECT) run-opt

# Compiles the LLVM pass
$(PASS_SHARED_OBJECT): $(PASS_OBJECT)
	$(CXX) -o $@ $(LDFLAGS) $^ $(LIBS)

$(PASS_OBJECT): $(PASS_NAME).cpp
	$(CXX) -o $@ -c $^ $(CXXFLAGS) -I$(INCLUDES)

# Applies the pass using opt on the assert.ll file
run-opt: $(PASS_SHARED_OBJECT)
	opt-17 -S -load-pass-plugin=./$(PASS_SHARED_OBJECT) -passes=$(PASS_NAME) $(IR_FILE) -o $(OUTPUT_IR)

# Clean the build
clean:
	rm -f $(PASS_OBJECT) $(PASS_SHARED_OBJECT) $(OUTPUT_IR)

.PHONY: all run-opt clean
