(module
  (func (export "m0") (param ) (result i32)
    (i32.div_u (i32.const 99)(i32.const 3))
  )
  (func (export "m1") (param ) (result i32)
    (i32.div_u (i32.const 99)(i32.const 4294967293))
  )
  (func (export "m2") (param ) (result i32)
    (i32.div_u (i32.const 1)(i32.const 0))
  )
  (func (export "m3") (param ) (result i32)
    (i32.div_u (i32.const 2147483648)(i32.const 4294967295))
  )
)
(assert_return (invoke "m0" ) (i32.const 33))
(assert_return (invoke "m1" ) (i32.const 0))
(assert_trap (invoke "m2" ) "")
(assert_return (invoke "m3" ) (i32.const 0))