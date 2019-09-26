(de rnd- ()
   (let Big (| (rand 0 7) (>> -28 (rand 0 15)) (>> -57 (rand 0 7)))
      (when (rand T)
         (setq Big (| Big `(hex "1FFFFFF0FFFFFF8"))) )
      (do (rand 0 2)
         (let Dig (| (rand 0 7) (>> -30 (rand 0 15)) (>> -61 (rand 0 7)))
            (when (rand T)
               (setq Dig (| Dig `(hex "1FFFFFFC3FFFFFF8"))) )
            (setq Big (| Dig (>> -64 Big))) ) )
      (if (rand T) Big (- Big)) ) )
(de rnd NIL
   (rand 1 1234567890) )
(de bn_malloc NIL
   (native "@" "malloc" 'N 36) )
(de bn_freem N
   (native "@" "free" NIL N) )
(de bn_read_uint32 (X N)
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
      (format Str) ) )
(de bn_bitcount (A)
   (native
      "libtrz.so.0"
      "bn_bitcount"
      'N
      A ) )
(de bn_digitcount (A)
   (native
      "libtrz.so.0"
      "bn_digitcount"
      'N
      A ) )
(de bn_lshift (A)
   (native
      "libtrz.so.0"
      "bn_lshift"
      NIL
      A ) )
(de bn_rshift (A)
   (native
      "libtrz.so.0"
      "bn_rshift"
      NIL
      A ) )
(de bn_zero (A)
   (native
      "libtrz.so.0"
      "bn_zero"
      NIL
      A ) )            
