import Foundation

let π = M_PI
var input:NSString
var 👸:Double

// Validation if there are any arguments
if (Process.arguments.count <= 1){
	println("No input an argument!")
	exit(0)
}

input = Process.arguments[1]
👸 = input.doubleValue

// For invalid arguments, they are converted to 0.0
if(👸 == 0.0){
	println("You must input a number!")
	exit(0)
}

// Convert 👸 to an angle between -2 PI and 2 PI
👸 = 👸 % (2 * π)

// Compute the Taylor series approximation for sin(👸)
var term:Double = 1.0 // ith term = 👸^i / i!
var sum:Double  = 0.0 // sum of first i terms in taylor series

for var i = 1; term != 0.0; i++ {

	term *= (👸 / Double(i))
	
	if (i % 4 == 1) {
		sum += term
	}
	
	if (i % 4 == 3) {
		sum -= term
	}	
}

println("sin(\(👸)):")
println("\(sum)")