void main()
{
    import std.stdio, std.bigint, std.conv, std.range;

    writefln("\n%(%s\\\n%)", (powmod(9_999.BigInt, 999.BigInt, 10.BigInt^^1_00)).text.chunks(80));
}
