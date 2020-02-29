GXX=g++
TARGET_DIR=out

out/libstatic.a:
	mkdir -p ${TARGET_DIR}
	${GXX} -c staticlib/staticlib.cpp -o ${TARGET_DIR}/libstatic.o
	ar rvs ${TARGET_DIR}/libstatic.a ${TARGET_DIR}/libstatic.o

out/libshared.so: 
	mkdir -p ${TARGET_DIR}
	${GXX} -shared sharedlib/libshared.cpp -o out/libshared.so

all: out/libshared.so out/libstatic.a
	mkdir -p ${TARGET_DIR}
	${GXX} main.cpp ${TARGET_DIR}/libstatic.a ${TARGET_DIR}/libshared.so -o out/mymain

run:
	out/mymain

clean:
	rm -rf out

.PHONY: clean 
