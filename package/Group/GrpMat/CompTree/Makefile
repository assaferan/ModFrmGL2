#$Id:: Makefile 1612 2008-12-16 03:53:07Z jbaa004                            $:

SHELL = /bin/sh

PACKAGE_FILES = Manifest

PACKAGE  = mgrp
PACKAGES = $(PACKAGE).tar.bz2 $(PACKAGE).tar.gz $(PACKAGE).zip
CHECKSUM = mgrp.sfv
TARGETS = $(PACKAGES) ChangeLog $(CHECKSUM)

MODULES  = classical.dir recog.dir GrpMat.dir
CLEAN    = $(MODULES:.dir=.clean)

.PHONY: modules all archive clean $(MODULES) $(CLEAN)

.SUFFIXES: .dir .clean

all: archive

$(MODULES): 
	$(MAKE) -C $*

$(CHECKSUM): $(MODULES)
	cfv -p .. -v --progress yes -C -f $(PACKAGE)/$@ `grep --invert-match --extended-regexp --regexp=$(CHECKSUM) $(PACKAGE_FILES)`

ChangeLog: 
	svn2cl --authors=AUTHORS

$(PACKAGE).tar:
	tar --create --verify --verbose --dereference --directory .. --file $(PACKAGE).tar --files-from $(PACKAGE_FILES) 

$(PACKAGES):: ChangeLog $(CHECKSUM) $(MODULES)

$(PACKAGE).tar.bz2:: $(PACKAGE).tar
	bzip2 --keep --verbose --best --force $<
	bzip2 --test --verbose $@

$(PACKAGE).tar.gz:: $(PACKAGE).tar
	gzip --best --force --verbose $<
	gzip --verbose --test $@

$(PACKAGE).zip:: 
	cd .. && cat $(PACKAGE)/$(PACKAGE_FILES) | zip -v -l -9 $(PACKAGE)/$@ -@ && cd $(PACKAGE)

archive: $(PACKAGES)
	unzip -t $(PACKAGE).zip
	mkdir --parents tmp
	mv $(PACKAGES) tmp

jones: 
	scp tmp/$(PACKAGE).tar.bz2 jbaa004@jones:~/matrix/
	ssh -l jbaa004 jones ~jbaa004/bin/mgrp.sh $(PACKAGE).tar.bz2
clean:: 
	rm --force $(TARGETS) $(PACKAGE).tar
	rm --recursive --force tmp
	rm --force `find . -iname '*.lck'`
	rm --force `find . -iname '*.sig'`
	rm --force `find . -iname '*~'`

$(CLEAN):
	$(MAKE) -C $* clean

clean:: $(CLEAN)
