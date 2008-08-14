CSC=$(MCS)

RAW_API=$(ASSEMBLY_NAME)-api-0.7.10.raw
API=$(ASSEMBLY_NAME)-api-0.7.10.xml
METADATA=$(ASSEMBLY_NAME).metadata
ASSEMBLY=$(ASSEMBLY_NAME).dll

build_sources = AssemblyInfo.cs

EXTRA_DIST =   \
	telepathy-glib-sharp-0.7.10-sources.xml

CLEANFILES=$(ASSEMBLY) generated-stamp $(API)

TELEPATHY_GLIB_0_7_10_DOWNLOAD = \
	http://telepathy.freedesktop.org/releases/telepathy-glib/telepathy-glib-0.7.10.tar.gz

all: $(ASSEMBLY)

api: get-source-code
	$(GAPIPAR) telepathy-glib-sharp-0.7.10-sources.xml

$(API): $(RAW_API) $(METADATA)
	cp $(RAW_API) $(API)
	chmod u+w $(API)
	$(GAPIFIX) --api=$(API) --metadata=$(METADATA)

get-source-code:
	curl -G $(TELEPATHY_GLIB_0_7_10_DOWNLOAD) | tar zx

generated-stamp: $(API)
	rm -rf generated &&	\
	$(GAPIGEN) --generate $(API) \
	--outdir=generated --customdir=../sources \
	--assembly-name=$(ASSEMBLY_NAME) && touch generated-stamp

$(ASSEMBLY): $(build_sources) generated-stamp
	$(CSC) -pkg:glib-sharp-2.0 -nowarn:169 -unsafe -target:library \
	$(build_sources) generated/*.cs -out:$(ASSEMBLY)