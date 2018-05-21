//
//  main.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import Foundation

print("Hello, World!")
print("d1d1dd1d", separator: "1", terminator: "haha")

print("/n")
var bigIntValue : Int32 = 2999;

var bigIntValue1 : Int64 = 2999999999;

print(bigIntValue);print(bigIntValue1)

print(uint8.min,Int8.min)

print("uint8的最小值是：\(uint8.min)")

var faloat :Float = 3.0
print(faloat)

var f1 = 5.12e2
print("f1 value is:\(f1)")

var a = 0.0

print("5.0 / a value is:\(5.0 / a)")

print("-5.0 / a value is:\(-5.0 / a)")

print("非数:\(a / a)")


var bookPrice :Int8 = 80
var itemPrice :Int16 = 120
var totle = Int16(bookPrice) + itemPrice
//var totle1 = bookPrice + Int8(itemPrice)
print(totle)
//print(totle1)

var b = 3.29
var c = Int(b)
print(b, c)

var health = (182,2.5555,"健康")
print(health)

var score : (Int,Double,String)
score = health
print(score, separator: "/n", terminator: "overtoto")

var test : (Int,(Int,String,(String,Int)))

test = (3,(6,"aaa",("bb",1)))

print("valey is :\(test),\(health)")

print(test.1,test.0,test.1.2.1)

var health1 = (height:178,weight:140,status:true)
var score1 : (swift:Int,oc:Int,lua:String,ruby:Double)
score1 = (50,100,"优秀",20.4)

print(health1,score1)
print("health1's value is:\(health1.1),\(health1.height)")

var str : String = "3"


var  num : Int? = Int(str)
print(num!)

var age : Int? = nil
age = 5
print(age!)

var myName :String? = nil

var n1 : Int? = 20,n2 : Int? = 30
var sum = n1! + n2!
print(sum)

var str1 : String? = "skskskksj"
if str1 != nil {
    var s : String = str1!
    print(s.append("哈哈😄"))
} else {
    print("str1 value is nil,can't force to analysis")
}

var str2 = String()
//var str3 = String(count:5,repeatedValue:Character("f"))
//print(str3)
print(str2.isEmpty)
let prefix = "djkva"
var info = prefix + "is a good training center"
print(info)

var s : NSString = "sajkdasfdav"
var substr = s.substring(with: NSMakeRange(2, 5))
print(substr)


var mutableStr = "swift"
mutableStr += "is a good training center"
print(mutableStr)
mutableStr.removeAll()
print(mutableStr)
mutableStr = "ios"
print("mutableStr contain letter count:\(mutableStr.count)")

let animals = "🐱🐶🐻🐷🐂🐎🐍🐑🐒🐔🐯🐰"
print("animals contain letter count:\(animals.count) ======\(animals.description)-----\(animals)")


for animal in animals {
    print(animal)
}

var  str4 = "http://.com"
var str5 = String()
str5 = str2 + str4
print(str4 == str5)
var hasHttpPrefix : Bool = str4.hasPrefix("http")
var hasComSuffix :Bool = str4.hasSuffix("com")
print("str4 begins with http：\(hasHttpPrefix)")
print("str4 end with http：\(hasComSuffix)")

let apples = 3,orange = 5
let appleSummary = "i have \(apples) apples"
let appleSum = "i have \(apples + orange) apples"
print(appleSummary,appleSum)

var h = 5,i = 4
var mod = h % i

var g = pow(2, 3)
print(g)

var k = sqrt(4)
print(k)

var l = arc4random() % 10
print(l)

var m = sin(4.0)
print(m)

var n = 2...6
for o in n {
    print("\(o) *5 = \(o) * 5")
}

let books = ["swift","OC","c","c++"]
//for index in 0..<books.count {
//    print("\(index + 1) type language is : \(books[index])")
//}

var o = 3,p = 5
var q = o > p ? "o > p" : "o < p"
print(q)

var r = 24

if r > 60{
    print("old people")
}else if r > 40 {
    print("midOldPeople")
}else if r > 20 {
    print("young people")
}else{
    print("chirld")
}

var t = "A"
switch t {
case "A":
    print("excellent")
case "B":
    print("good")
case "C":
    print("medium")
case "D":
    print("differential")
default:
    print("error")
}

var u = 5
var description = "number \(u) is"
switch u {
case 2,3,5,7,11,13,19:
    description += "[质数]，also is "
    fallthrough
case 4,8:
    description += "Swift"
default:
    description += "[整数]"
}
print(description)

var v = (x:-2,y:10)
switch v {
case (0,0):
    print("(0,0) location at origin)")
case (let x,0):
    print("current point local x line,and the value is:\(x)")
case (0,let y):
    print("current point local y line,and the value is:\(y)")
case let (x,y):
    print("current point local other location,and the value is:\(x),\(y)")
}

switch v {
case (0,0):
    print("(0,0) location at origin)")
case (let x,0):
    print("current point local x line,and the value is:\(x)")
case (0,let y):
    print("current point local y line,and the value is:\(y)")
case let (x,y) where x > 0 && y > 0:
    print("\(x),\(y) location at first block")
case let (x,y) where x < 0 && y > 0:
    print("\(x),\(y) location at second block")
case let (x,y) where x > 0 && y < 0:
    print("\(x),\(y) location at third block")
case let (x,y) where x < 0 && y < 0:
    print("\(x),\(y) location at four block")
default:
    break
}

for i in 0...10 {
    print("i value is:\(i)")
    if i == 2 {
        break
    }
}

outer: for i in 0...5 {
    for j in 0...3 {
        print("i value is:\(i), j value is:\(j)")
        if j == i {
            break
        }
    }
}

for i in 0...3 {
    print("i value as:\(i)")
    if i == 1 {
        continue
    }
    print("the centence after continue")
}

var mArr :Array<String>
var names :[String]
var nums : [Int]

var languages = ["Swift"]
languages.append("Go")
languages += ["Ruby"]
languages.insert("OC", at: 1)
print(languages)
let subRange = languages[1...3]
print(subRange)
languages[0...2] = ["C/C++","Python"]
print(languages)
languages[0...languages.count - 1] = ["Java","DB"]
print(languages)
languages.remove(at: 1)
print(languages)
languages.removeAll()
print(languages)

var scores : [String:Int]
scores = Dictionary<String,Int>()

scores["chinese"] = 87
scores["英语"] = 87
scores["mathematics"] = 87
print(scores)
var englishScore: Int? = scores["英语"]
if englishScore != nil {
    print("scores contain english score is:\(englishScore!)")
}
var result = scores.updateValue(20, forKey: "chinese")
print(result!)
print(scores)


var seasons = ["spring":"春暖花开","summer":"夏日炎炎","autumn":"秋高气爽","winter":"白雪皑皑",]
for (season, dese) in seasons{
    print("\(season)----->\(dese)")
}

var keys = Array(seasons.keys)
var values = Array(seasons.values)
print(keys,values)

var w = ["Swift":9000,"OC":3400,"PHP":3500,"Perl":8000,"Ruby":2000,"Go":5600]
w.removeValue(forKey: "Ruby")
print(w)
w["Go"] = nil
//w.removeAll()
print(w)

let x = "fkit.prgabcxyz123crazyittianhijt"

var status :[Character:Int] = [:]
for ch in x {
    let  num = status[ch]
    if num != nil{
        status[ch] = num! + 1
    }else{
        status[ch] = 1
    }
}
print(status)

var maxOccurs = 0
for occurs in Array(status.values) {
    if occurs > maxOccurs{
        maxOccurs = occurs
    }
}

for (ch,occurs) in status{
    if occurs == maxOccurs{
        print("show most character is \(ch),this character appear \(occurs)")
    }
}


class User {
    var name : String
    init(name:String) {
        self.name = name
    }
}

var users = [User(name:"孙悟空"),User(name:"猪八戒"),User(name:"唐僧"),]
var cp1 = users
var cp2 = users
cp1[0].name += "齐天大圣"
cp2[0].name += "弼马温"
print(users[0].name)
print(cp1[0].name)
print(cp2[0].name)


var studentScores = ["语文":89,"数学":92,"英语":87]
var studentCp1 = studentScores
var studentCp2 = studentScores
studentCp1["语文"] = 60
studentCp2["语文"] = 70
print(studentScores["语文"]!)
print(studentCp1["语文"]!)
print(studentCp2["语文"]!)


class Score {
    var mark : Int
    init(mark:Int) {
        self.mark = mark
    }
}

var currentScores = ["语文":Score(mark:89),"数学":Score(mark:92),"英语":Score(mark:87)]
var currentCp1 = currentScores
var currentCp2 = currentScores
currentCp1["语文"]!.mark = 60
currentCp2["语文"]!.mark = 70
print(currentScores["语文"]!.mark)
print(currentCp1["语文"]!.mark)
print(currentCp2["语文"]!.mark)
