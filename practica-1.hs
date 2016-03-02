-- Calculate how many miliseconds

seconds_to_minutes x = div x 60
seconds_to_hours x = div (seconds_to_minutes x) 60
seconds_to_days x = div (seconds_to_hours x) 24
seconds_to_years x = div (seconds_to_days x) 365

remainder_seconds x = x `mod` 60
remainder_minutes x = mod (seconds_to_minutes x) 60
remainder_hours x   = mod (seconds_to_hours x) 60
remainder_days x    = mod (seconds_to_days x) 365
remainder_years x   = mod (seconds_to_years x) 365

output_conversion x = ( remainder_years x, remainder_days x, remainder_hours x, remainder_minutes x, remainder_seconds x)

-- Ejercicio 2

-- f x y = 2 * x - y * x
-- g x = f (f 2 x) (f x 1)
-- h x y z = f  (5 - g(z) - y)
