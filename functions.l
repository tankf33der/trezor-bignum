(de bn_malloc NIL
   (native "@" "malloc" 'N 36) )
(de bn_freem N
   (native "@" "free" NIL N) )
(de bn_read_uint64 (X N)
   (native
      "libtrz.so.0"
      "bn_read_uint64"
      NIL
      X
      N ) )
(de bn_format (N)
   (let Str NIL
      (native
         "libtrz.so.0"
         "bn_format"
         NIL
         N
         0
         0
         0
         0
         0
         '(Str (128 C . 128))
         128 )
      (println 1)
      (format Str) ) )
      
