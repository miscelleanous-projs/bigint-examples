import std.stdio, std.conv, std.range, std.bigint;

BigInt binomial(uint n, uint k)
{
   assert(n >= k);
   
   BigInt r = 1;
   
   for(int i = 0; i <= k; ++i)
   {
      r *= n-i;
      r /= i+1;
   }
   
   return r;
}

void main()
{
    writefln("\n%(%s\\\n%)", binomial(10_000u, 5_000u).text.chunks(80));
}
