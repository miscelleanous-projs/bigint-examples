
# Simple Exponentiation

## Source code

```d
import std.stdio: writefln;
import std.bigint: BigInt, powmod;
import std.conv: text;
import std.range: chunks;

BigInt largestKnownMersennePrime(int n)
{
    return (2.BigInt^^n)-1.BigInt;
}

BigInt getLastNDigits(BigInt bigNumber, size_t n) {
    return powmod(bigNumber, 1.BigInt, 10.BigInt^^n);
}

void main()
{
    const size_t SIZE = 120;
    const int EXP = 82_589_933;

    BigInt largestP  = largestKnownMersennePrime(EXP);
    
    BigInt Last120   = getLastNDigits(largestP, SIZE);

    const string MSG2 = "\nThe Last %s digits of the Largest known Mersenne Prime is: \n\n%(%s\\\n%)";
    
    writefln(MSG2, SIZE, Last120.text.chunks(80));
}

```

## Result

```text
The Last 120 digits of the Largest known Mersenne Prime is:

62107557947958297531595208807192693676521782184472526640076912114355308311969487\
633766457823695074037951210325217902591
```

## What about the first 120 digits?

Well, it's left to you as an exercise 😜 Cool it, I'm just kidding.

I've tried 2 approaches sofar but in vain (They all take too much cpu time and likely memory!!!):
  - Converting `BigInt` to `string` and extract the first 120 digits using [toDecimalString](https://dlang.org/phobos/std_bigint.html#.toDecimalString) or [toString](https://dlang.org/phobos/std_bigint.html#.BigInt.toString) in conjunction with `std.format.format`.
  - Taking advantage of the [divMod](https://dlang.org/phobos/std_bigint.html#.divMod) builtin... Namely 1) calculate the `remainder` when dividing by 10^120, 2) subtract the remainder to get the `leading digits` and finally 3) divide by 10^(120-1) to get the `end result`

I suspect Brute force approach or similar approache is not the way to go... Maybe finding out generating series/[generating function](https://en.wikipedia.org/wiki/Generating_function) or some [polynomial interpolation](https://en.wikipedia.org/wiki/Polynomial_interpolation) ?!

Contributions welcome ❤️❤️❤️

## URL

[Wikipedia Entry](https://en.wikipedia.org/wiki/Largest_known_prime_number)
