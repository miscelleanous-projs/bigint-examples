import std.stdio;
import std.bigint;
import std.conv;
import std.range;
import std.traits;

T BinCoeff(T)(in T n, in T k) if (is(T : BigInt) || (isIntegral!T))
{
    T tn = n, tk = k, result = T(1);

    if (tk > tn - tk) tk = tn - tk;

    for (T i = T(0); i < tk; i++)
    {
        result = result * (tn - i);
        result = result / (i + T(1));
    }

    return result;
}

void main()
{
     writefln("\n%(%s\\\n%)", BinCoeff(10_000.BigInt, 5_000.BigInt).text.chunks(80));
}