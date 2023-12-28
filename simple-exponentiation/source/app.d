void main()
{
    import std.stdio, std.bigint, std.conv, std.range;

	writefln("\n%(%s\\\n%)", (9_999.BigInt^^999).text.chunks(80));
}
