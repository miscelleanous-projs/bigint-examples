# Sum of Self Powers

## Source code

```d
import std.stdio : writefln;
import std.bigint : BigInt;
import std.range : chunks, iota;
import std.algorithm: map, sum;
import std.conv;

void main()
{
    const N = 500;
    
    auto answer = iota(1, N + 1).map!(i => BigInt(i) ^^ i).sum;
    
    writefln("\nSum of %d Self Powers:\n\n%(%s\\\n%)", N, answer.text.chunks(80));
}
```

## Result

```text
Sum of 500 Self Powers:

30571879720148825117196258187015615604651061875447803072310219676912959508517931\
99225832257084579361696645842030248203956059704221840208852156220438273265512321\
65704333229721111729941037015237734686087927679432830846889533585948569290293674\
60516327727971910695020598083160294843003015082080616268340657176760970116863975\
56220200594168083246374459512734867095632857941399938655375527271985372661172749\
47661236634468323039812845859582158516322679108023437430997594624043136738219076\
88292784359974903628727723309483398369265417548077245253570889411057864382142025\
81650171311881735976668206359922287914838874872238006767153869343834728797496155\
66837514558911513335509280383852478128932253188170463538282591672877209938985951\
03621508558893424748040600727108197309717169881700534624344573671730066243336701\
97144020170761713088299376220403966093669727022112300502536606699297230610769720\
29686980542328930254313285657753477862277434439906091282258015929185933435325789\
20811784497529645311387552079820277059991067958678742357176434290706245081027995\
99923328781482311274031578061895756812252451249614677485845524473948205661050149\
92141251862020113047847625969301009716451055062207394281361389018851995613668703\
35129565092878745390658003319956322931242159028021937448880148477153750502164370\
6884893106756342528406455232540238986336019337172598363786071688579600
```