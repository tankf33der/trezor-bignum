Test bignum core code from Trezor by PicoLisp.

Lets see.

SEP2019 (https://github.com/trezor/trezor-firmware, #f54c968)

Have fun!

***

Tested in multimillion loop on random data.
Passed for functions I took: bn_read_uint32, bn_format, 
bn_bitcount, bn_digitcount, bn_lshift, bn_rshift, bn_xor, bn_add, bn_addi,
bn_subtract, bn_divmod58, bn_divmod1000.
