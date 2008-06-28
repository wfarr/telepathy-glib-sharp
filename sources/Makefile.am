EXTRA_DIST =   \
	README \
	telepathy-glib-sharp-0.7.10-sources.xml

TELEPATHY_GLIB_0_7_10_DOWNLOAD = \
	http://telepathy.freedesktop.org/releases/telepathy-glib/telepathy-glib-0.7.10.tar.gz

api: api-0.7.10

api-0.7.10:
	PATH=../parser:$$PATH $(RUNTIME) ../parser/gapi-parser.exe telepathy-glib-sharp-0.7.10-sources.xml

get-source-code: get-0.7.10-sources

get-0.7.10-sources:
	wget $(TELEPATHY_GLIB_0_7_10_DOWNLOAD) --output-document=- | tar -zx