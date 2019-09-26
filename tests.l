`(== 64 64)
(seed (in "/dev/urandom" (rd 8)))
(load "functions.l")
(setq X 30000)
(setq A (bn_malloc))
(setq B (bn_malloc))
(setq C (bn_malloc))

# bn_read_uint32
# bn_format
# bn_bitcount
# bn_digitcount
(do X
   (let (N (rnd)  S (rand 100 190))
      (bn_read_uint32 N A)
      (test N (bn_format A))
      (test
         (length (bin N))
         (bn_bitcount A) )
      (test
         (length N)
         (bn_digitcount A) )

      # bn_lshift
      (do S (bn_lshift A))
      #(test (bn_format A) (>> (- S) N))
      (let (A1 (bn_format A)  B1 (>> (- S) N))
         (println 'A A1 'B B1)
         (test A1 B1) )
   )
)





(msg 'ok)
(bye)
