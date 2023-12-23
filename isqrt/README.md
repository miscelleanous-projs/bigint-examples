
# BigInt isqrt

## Source code

```d
import std.stdio: writefln;
import std.bigint : BigInt;

BigInt bigIntIsqrt(BigInt n) {
    if (n < 0) {
        throw new Exception("Cannot calculate square root of a negative number");
    }

    if (n == 0.BigInt || n == 1.BigInt) {
        return n;
    }

    BigInt start = 1.BigInt;
    BigInt end = n;
	
    BigInt result = 0.BigInt;

    // Binary Search
    while (start <= end) {
        BigInt mid = (start + end) / 2;

        if (mid * mid == n) {
            return mid;
        }

        if (mid * mid < n) {
            // Search in the right half
			start = mid + 1;
            result = mid;
        } else {
            // Search in the left half
            end = mid - 1;
        }
    }

    return result;
}

void main() {
    auto n = "49_221_735_352_184_872_959_961_855_190_338_177_606_846_542_622_561_400_857_262_407".BigInt;
	
    writefln("\n(Big Integer) Intisqrt(%d) == %d", n, bigIntIsqrt(n));
}
```
## Result

```text
(Big Integer) Intisqrt(49221735352184872959961855190338177606846542622561400857262407) == 7015820362023593956150476655802
```
