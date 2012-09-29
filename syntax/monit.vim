"
" Vim syntax file
"
" Language: Monit config files
" Maintainer: Marcus Vinicius Ferreira
" Latest Revision: 29 September 2012
"

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "monit"

syn keyword monitDefine     check set with program pidfile with
syn keyword monitMonit      cycles for times within restarts status
syn keyword monitAction     alert start stop restart unmonitor exec as

syn keyword monitResource1  directory file fifo filesystem
syn keyword monitResource2  space usage
syn keyword monitResource3  host system
syn keyword monitResource4  cpu totalcpu loadavg
syn keyword monitResource5  mem totalmem memory swap
syn keyword monitResource6  loadavg 1min 5min 15min
syn keyword monitResource7  path fsflags inode inodes perm permission
syn keyword monitResource8  process uid gid pid ppid children uptime
syn keyword monitResource9  host port
syn keyword monitResource0  expect send timeout retry
syn keyword monitResources  url content certmd5
syn keyword monitProtocol1  proto protocol tcp udp tcpssl unixsocket icmp type echo
syn keyword monitProtocol2  apache-status dns dwp ftp gps http imap clamav ldap2 ldap3 lmtp memcache mysql nntp ntp3 pop postfix-policy radius rdate rsync sip smtp ssh tns pgsql
syn keyword monitProtocol3  request hostheader checksum
syn keyword monitProtocol4  sip target maxforward
syn keyword monitProtocol5  radius secret

syn keyword monitCondition  if then else and
syn keyword monitTest1      does not exist succeeded changed failed
syn keyword monitTest2      lt gt eq ne greater less equal notequal
"yn keyword monitTest3      < > == !=
"yn keyword monitValue0     x% xB xKB xMB xGB
syn keyword monitValue1     percent byte kilobyte megabyte gigabyte
syn keyword monitValue2     bytes kilobytes megabytes gigabytes

syn keyword monitChecksum   md5 sha1 checksum expect size
syn keyword monitTimestamp1 timestamp
syn keyword monitTimestamp2 second minute hour day
syn keyword monitTimestamp3 seconds minutes hours days
syn keyword monitPoll       not every

syn keyword monitRegex      ignore match
"yn keyword monitRegex      "//"

syn region  monitString     start='"' end='"'
syn match   monitIdentifier "[a-zA-Z0-9\-\.]\+"
syn match   monitFilePath   "[/a-zA-Z0-9-\.]\+"
syn match   monitNumber     "\d\+"
syn match   monitComment    "#.*$"
syn match   monitUrl        "[a-z]\+://.\+"


hi def link monitUrl        Boolean

hi def link monitKeyword    Keyword
hi def link monitDefine     Define
hi def link monitMonit      Statement
hi def link monitResource1  Type
hi def link monitResource2  Type
hi def link monitResource3  Type
hi def link monitResource4  Type
hi def link monitResource5  Type
hi def link monitResource6  Type
hi def link monitResource7  Type
hi def link monitResource8  Type
hi def link monitResource9  Type
hi def link monitResource0  Type
hi def link monitResources  Type
hi def link monitCommon     Special

hi def link monitCondition  Conditional
hi def link monitTest       Function
hi def link monitTest1      Function
hi def link monitTest2      Function
hi def link monitTest3      Function

hi def link monitValue      Identifier
hi def link monitValue0     Identifier
hi def link monitValue1     Identifier
hi def link monitValue2     Identifier

hi def link monitAction     Type
hi def link monitProtocol   Identifier
hi def link monitTimestamp  Special
hi def link monitTimestamp1 Special
hi def link monitTimestamp2 Special
hi def link monitTimestamp3 Special
hi def link monitChecksum   Special
hi def link monitRegex      Boolean
hi def link monitPoll       Boolean


" vim:ft=vim:

