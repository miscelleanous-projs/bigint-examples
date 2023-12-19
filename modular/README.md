
# Modular Exponentiation

## Source code

```d
void main()
{
    import std.stdio, std.bigint, std.conv, std.range;

    writefln("\n%(%s\\\n%)", (powmod(9_999.BigInt, 999.BigInt, 10.BigInt^^1_00)).text.chunks(80));
}
```
## Result

```text
16833427436020241695817624172792478796866147115090524910025232224449161960158805\
03158449149909989999
```
