
# Sum of Squares

## Source code

```d
import std.stdio: writefln;
import std.range: array, chunks, iota, retro;
import std.algorithm: map, sum;
import std.bigint: BigInt;
import std.string : join;
import std.conv: text;

// Non essential... Workaround for formatting output
string withThousandSeparator(BigInt n) {
    auto digits = n.text.retro.array;
    
    auto chunks = digits.chunks(3)
        .map!(chunk => chunk.idup.text)
        .array;

    return chunks.join("_").retro.text;
}

BigInt sumOfSquares(uint n) 
{
	// To widen progressively the type used in intermediary calculation is the key
	// Here ulong at the 1st stage (iota) and BigInt finally (seed of sum())
	// Hence no more Precision and/or Overflow issues if done right
	return iota(1uL, n).map!(a => a ^^ 2u).sum(BigInt(0));
}

void main()
{
	writefln("\nuint.max = %,3?d", '_', uint.max);
	writefln("\nsumOfSquares(%,3?d) = %s", '_', 999u, withThousandSeparator(999u.sumOfSquares));
	writefln("sumOfSquares(%,3?d) = %s", '_', 999_999u, withThousandSeparator(999_999u.sumOfSquares));
}
```

## Result

```text
uint.max = 4_294_967_295

sumOfSquares(999) = 331_835_499
sumOfSquares(999_999) = 333_331_833_335_499_999
```
