# Paths
LIBOMP_PATH = /opt/homebrew

# Source and object files
SRCS = $(shell find . -name "*.cpp")
OBJS = $(addsuffix .o, $(basename $(SRCS)))
EXEC = painless

# Libraries and flags
INCLUDES = -I. -I../kissat_mab
DEFS = -D__STDC_LIMIT_MACROS -D__STDC_FORMAT_MACROS
CXXFLAGS = $(INCLUDES) $(DEFS) -fopenmp -std=c++17 -O3 -D NDEBUG

LIBOMP_ROOT = /opt/homebrew/opt/libomp

LDFLAGS = -L../kissat_mab/build -lkissat -lpthread -lz -lm \
          -L$(LIBOMP_ROOT)/lib -lomp \
          -I$(LIBOMP_ROOT)/include


# Build executable with clang++
$(EXEC): $(OBJS)
	$(CXX_LINK) -o $@ $^ $(LDFLAGS)

# Compile
%.o: %.cpp
	$(CXX_COMPILE) -c $< -o $@ $(CXXFLAGS)

# Clean
clean:
	rm -f $(OBJS) $(EXEC)
