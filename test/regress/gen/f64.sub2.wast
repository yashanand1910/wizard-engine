(module
  (func (export "m0") (param f64 ) (result f64)
    (f64.sub (local.get 0)(f64.const 0x1.6800000000000p3))
  )
  (func (export "m1") (param f64 ) (result f64)
    (f64.sub (local.get 0)(f64.const 0))
  )
)
(assert_return (invoke "m0" (f64.const 0x1.A000000000000p2)) (f64.const -0x1.3000000000000p2))
(assert_return (invoke "m1" (f64.const 0)) (f64.const 0))