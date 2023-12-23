import std.stdio : writefln;
import std.bigint : BigInt;
import std.conv;
import std.range;

struct Matrix {
    BigInt a, b, c, d;
    
	// Multiplication
    Matrix opBinary(string op)(Matrix other) if (op == "*") {
        return Matrix(
            a * other.a + b * other.c,
            a * other.b + b * other.d,
            c * other.a + d * other.c,
            c * other.b + d * other.d
        );
    }
}

Matrix matrixPow(Matrix base, BigInt exponent) {
    if (exponent == 0) {
        // Identity matrix
		return Matrix(1.BigInt, 0.BigInt, 0.BigInt, 1.BigInt);
    } else if (exponent % 2 == 0) {
        auto halfPow = matrixPow(base, exponent / 2);
        
        return halfPow * halfPow;
    } else {
        return base * matrixPow(base, exponent - 1);
    }
}

// Fibonacci function using matrix exponentiation
BigInt fibonacci(int n) {
    if (n == 0) return 0.BigInt;
    
    Matrix base = Matrix(1.BigInt, 1.BigInt, 1.BigInt, 0.BigInt);
    Matrix result = matrixPow(base, BigInt(n - 1));
    
    return result.a;
}

void main() {
    writefln("\n%(%s\\\n%)", 9_999.fibonacci.text.chunks(80));
}
