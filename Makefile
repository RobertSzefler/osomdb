DBS_OBJS=dbs.o
DBSCLI_OBJS=dbscli.o
CXXFLAGS=-W -Wall -std=c++0x

%.o: %.cpp
	$(CXX) $< -c -o $@ $(CXXFLAGS)

.phony: all dep clean

all: dbs dbscli
dep:
	$(CXX) $(CXXFLAGS) -MM *.cpp > .depend
clean:
	rm -rf *.o dbs dbscli

dbs: $(DBS_OBJS)
	$(CXX) $^ -o $@ $(CXXFLAGS) $(LDFLAGS)
dbscli: $(DBSCLI_OBJS)
	$(CXX) $^ -o $@ $(CXXFLAGS) $(LDFLAGS)

ifeq (.depend, $(wildcard .depend))
include .depend
endif
