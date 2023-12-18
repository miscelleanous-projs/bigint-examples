import std.stdio: writefln;
import std.bigint : BigInt;
import std.conv: to;

BigInt tetration(int base, int height)
{
    if (height == 0)
        return 1.BigInt;

    BigInt result = to!BigInt(base);

    for (int i = 1; i < height; ++i)
    {
        result = result ^^ base;
    }

    return result;
}

void main()
{
    const auto BASE = 2;
    const auto HEIGHT = 16;

    BigInt result = tetration(BASE, HEIGHT);

    writefln("\nTetration of %d to the power of %d is: %s", BASE, HEIGHT, result);
}
