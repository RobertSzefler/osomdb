# TODO: TEST_OBJS etc

DBS_OBJS=dbs.o json.o
DBSCLI_OBJS=dbscli.o json.o
CXXFLAGS=-W -Wall -std=c++0x -I../common/
TEST_OBJS=

%.o: %.cpp
	$(CXX) $< -c -o $@ $(CXXFLAGS)

.phony: all dep clean test

all: dbs dbscli
dep:
	$(CXX) $(CXXFLAGS) -MM *.cpp > .depend
clean:
	rm -rf *.o dbs dbscli
test: $(TEST_OBJS)

dbs: $(DBS_OBJS)
	$(CXX) $^ -o $@ $(CXXFLAGS) $(LDFLAGS)
dbscli: $(DBSCLI_OBJS)
	$(CXX) $^ -o $@ $(CXXFLAGS) $(LDFLAGS)

ifeq (.depend, $(wildcard .depend))
include .depend
endif
