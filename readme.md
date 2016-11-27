# Silo
Right now silo is a side project of mine to ease the pain of hosting a rkt
server by injecting metadata into all nginx headers.  Right now the project is a
**work in progress** and **should not be used** in its current state.  That
being said, I am using it in my production statck. The project will get some 
love during holiday break between classes.  If you have interest on where 
the project is headed or to help contribute, drop me a pm or a pr.

## How to use silo

### with existing nginx
- to use this with an existing nginx instance, said instance will have to be
  compiled with module `--with-http_sub_module`.
- we can how add the following to our nginx config:
  `sub_filter '</head>' '<INSERT_RKT_METADATA_HERE> </head>';`
  this will replace the existing `</head>` tag with our metadata and then close
  the tag.

## TODO
nginx instanace and build for sub_filter (aka travis build for
unixvoid/nginx:sub_filter or unixvoid/nginx:rkt)
conf for metadata injection
a way to gpg sign aci's
a way to upload the files (binder?)
