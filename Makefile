# Default to gcc-15/g++-15, override with environment variables if set
CXX_COMPILE ?= $(CXX)
CXX_LINK ?= $(CXX)

all:
	##################################################
	###               kissat_mab                   ###
	##################################################
	chmod a+x kissat_mab/configure kissat_mab/scripts/*.sh
	cd kissat_mab && CC=$(CC) CXX=$(CXX) ./configure --compact
	+ $(MAKE) -C kissat_mab CC=$(CC) CXX=$(CXX)

	##################################################
	###                 PaInleSS                   ###
	##################################################
	+ $(MAKE) -C painless-src CXX_COMPILE=$(CXX_COMPILE) CXX_LINK=$(CXX_LINK)
	mv painless-src/painless parkissat

clean:
	##################################################
	###                 PaInleSS                   ###
	##################################################
	+ $(MAKE) clean -C painless-src
	+ $(MAKE) clean -C kissat_mab
	rm -f parkissat
