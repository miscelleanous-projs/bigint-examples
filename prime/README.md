
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

    const string MSG2 = "\nThe Last %s digits of  the Largest known Mersenne Prime is: \n\n%(%s\\\n%)";
    
    writefln(MSG2, SIZE, Last120.text.chunks(80));
}

```

## Result

```text
The Last 120 digits of  the Largest known Mersenne Prime is:

62107557947958297531595208807192693676521782184472526640076912114355308311969487\
633766457823695074037951210325217902591
```

## What about the first 120 digits?

