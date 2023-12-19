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
