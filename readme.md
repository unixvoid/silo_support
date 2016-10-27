## How to use rktry

### with existing nginx
- to use this with an existing nginx instance, said instance will have to be
  compiled with module `--with-http_sub_module`.
- we can how add the following to our nginx config:
  `sub_filter '</head>' '<INSERT_RKT_METADATA_HERE> </head>';`
  this will replace the existing `</head>` tag with our metadata and then close
  the tag.

## TODO
nginx instanace and build for sub_filter
conf for metadata injection
a way to gpg sign aci's
a way to upload the files (binder?)
