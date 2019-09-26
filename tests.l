`(== 64 64)
(seed (in "/dev/urandom" (rd 8)))
(load "functions.l")

(setq A (bn_malloc))
(bn_read_uint64 123440598089 A)
(println 'mike (bn_format A))


(msg 'ok)
(bye)
