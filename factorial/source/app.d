import std.stdio;
import std.BigInt;
import std.range;
import std.algorithm;
import std.conv;

BigInt factorial(uint n) pure
{
    auto b = 1.BigInt;
    
    foreach(i; iota(1, n + 1))
        b *= i;
    
    return b;
}


void main()
{
    writefln("\n%(%s\\\n%)", 999.factorial.text.chunks(80));
}
