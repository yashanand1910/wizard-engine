(module
  (func (export "m0") (param ) (result i32)
    (i64.ne (i64.const 99)(i64.const 99))
  )
  (func (export "m1") (param ) (result i32)
    (i64.ne (i64.const 1077749394773)(i64.const 1077212523861))
  )
  (func (export "m2") (param ) (result i32)
    (i64.ne (i64.const 18072640525455995716)(i64.const 18072640525455995716))
  )
)
(assert_return (invoke "m0" ) (i32.const 0))
(assert_return (invoke "m1" ) (i32.const 1))
(assert_return (invoke "m2" ) (i32.const 0))