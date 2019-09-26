`(== 64 64)
(seed (in "/dev/urandom" (rd 8)))
(load "functions.l")
(setq X 4096)
(setq A (bn_malloc))
(setq B (bn_malloc))
(setq C (bn_malloc))

# bn_read_uint32
# bn_format
# bn_bitcount
# bn_digitcount
# bn_lshift
# bn_rshift
(do 3
   (let (N (rnd)  S (rand 100 190))
      (bn_read_uint32 N A)
      (test N (bn_format A))


      (do S (bn_lshift A))
      (test (bn_format A) (setq N1 (>> (- S) N)))
      (test (length (bin N1)) (bn_bitcount A))
      (test (length N1) (bn_digitcount A))

      # bn_xor
      (bn_xor C A A)
      (test 0 (bn_format C))

      (setq S (rand 60 120))
      (do S (bn_rshift A))
      (test (bn_format A) (>> S N1))

      # bn_mod
      (bn_read_uint32 123456789 C)
      (println (bn_format A) (bn_format C))
      (bn_mod A C)
      (println (bn_format A) (bn_format C))
    
   )

)

# bn_setbit
# bn_clearbit
(setq N1 12345)
(bn_read_uint32 N1 A)
(for N 255
   (bn_setbit A N)
   (setq N1 (| N1 (>> (- N) 1)))
   (test N1 (bn_format A)) )
(for N 255
   (bn_clearbit A N)
   (setq N1 (x| N1 (>> (- N) 1)))
   (test N1 (bn_format A)) )


(msg 'ok)
(bye)
