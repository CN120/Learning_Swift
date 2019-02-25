//
//  LearningSwift.swift
//
//
//  Created by Chris Nelson on 2/24/19.
//

import Foundation
var argNum = CommandLine.argc
var args = Int(CommandLine.arguments[1])
if (args==nil) {
    args=0;
}
var n = args!

var pascalTri =  Array(repeating: Array(repeating: 0, count: n), count: n)

/* n lines have line numbers 0 through (n-1)
loop will print list o numbers for each line */
for lineNum in 0...(n-1) {
    //each line has lineNum+1 numbers in it
    for i in 0...lineNum{
        if(i==0 || i==lineNum){
            pascalTri[lineNum][i]=1
        }
        else{
            pascalTri[lineNum][i] = pascalTri[lineNum-1][i-1] + pascalTri[lineNum-1][i]
        }
        print(pascalTri[lineNum][i], terminator: " ")
    }
    print()
}
