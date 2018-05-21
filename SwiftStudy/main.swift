//
//  main.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
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
 */

/*
 ThirdDayDemoOne
func max(x:Int,y:Int) -> Int {
    let z = x > y ? x : y
    return z
}

func sayHi(name:String) -> String {
    return "\(name),你好"
}

var a = 5,b = 9
var result = max(a, b)
print("result: \(result)")
print(sayHi(name: "孙悟空"))

func tempMax(x:Int,y:Int) -> Int {
    return x > y ? x : y
}
print(tempMax(x: 3, y: 5))

func showMsg(msg: String, count: Int) -> Void {
    for _ in 1...count {
        print(msg)
    }
}
showMsg(msg: "welcome study swift", count: 3)

func divide(num: Double) -> (String,String) {
    let zheng = Int64(num)
    let xiao = round((num - Double(zheng)) * 100)
    return ("\(zheng)","\(Int(xiao))")
}
var tempResult = divide(num: 1284.56)
print("整数部分:\(tempResult.0)")
print("小数部分:\(tempResult.1)")

func getMaxAndMin(nums:[Int]) -> (max:Int,min:Int) {
    var max = nums[0]
    var min = nums[0]
    for num in nums {
        if num > max{
            max = num
        }
        if num < min{
            min = num
        }
    }
    return (max,min)
}
var nums = [20,10,30,-21,100,200,-2,213]
var maxAndMin = getMaxAndMin(nums: nums)
print("max is :\(maxAndMin.max),min is :\(maxAndMin.min)")

//已知一个数列：f(0) = 1.f(1) = 4,f(n+2) = 2*f(n+1)+f(n),其中n是大于0的整数，求f(10)
func fn(n:Int) -> Int {
    if n == 0 {
        return 1
    }else if n == 1{
        return 4
    }else{
        return 2 * fn(n: n-1) + fn(n: n-1)
    }
}
print("fn(10) result is: \(fn(n: 10))")

//已知一个数列：f(20) = 1.f(21) = 4,f(n+2) = 2*f(n+1)+f(n),其中n是大于0的整数，求f(10)
func otherFn(n:Int) -> Int {
    if n == 20 {
        return 1
    }else if n == 21{
        return 4
    }else{
        return 2 * otherFn(n: n+2) - otherFn(n: n+1)
    }
}
print("otherFn(10) result is: \(otherFn(n: 10))")


func girth1(width: Double, height: Double) -> Double {
    return Double(2) * (width + height)
}
print(girth1(width: 3, height: 5))

func girth2(宽 width: Double, 高 height: Double) -> Double {
    return Double(2) * (width + height)
}
print(girth2(宽: 2, 高: 3))
/*
 此方法在swift3以前的版本可行，调用形式为 print(girth(width: 3, height: 5))，但是在3以后的版本此方法错误
 func girth3(#width: Double, #height: Double) -> Double {
 return Double(2) * (width + height)
 }
 */

func sayHi1(msg: String, name: String = "孙悟空") {
    print("\(name),\(msg)")
}
sayHi1(msg: "welcome login")
sayHi1(msg: "welcome login", name: "baigujing")

func test(a: Int, books: String...) {
    for temp in books {
        print(temp)
    }
    print(a)
}
test(a: 5, books: "iOS","OC","PHP")

/*
 
 //定义函数类型的形参，其中fn是（Int）->Int类型的形参
 func map(var data: [Int],fn: (Int) -> Int) -> [Int] {
 //在Swift3以后的版本不能在形参里面定义一个变量，只能是常量
 for i in data {
 data[i] = fn(data[i])
 }
 return data
 }
 */

/*
 SecondDayDemoOne
//定义一个计算平方的函数
func square(varl: Int) -> Int {
    return varl * varl
}
//定义一个计算立方的函数
func cube(varl: Int) -> Int {
    return varl * varl * varl
}
//定义一个计算阶乘的函数
func factorial(varl: Int) -> Int {
    var result = 1
    for index in 2...varl {
        result *= index
    }
    return result
}

var data  = [3,4,9,5,8]


//使用函数类型作为返回值类型
//定义函数，该函数的返回值类型为（Int）->Int
func getMathFunc(type: String) -> (Int) -> Int {
    switch type {
    case "square":
        return square
    case "cube":
        return cube
    default:
        return factorial
    }
}
var mathFunc = getMathFunc(type: "cube")
print(mathFunc(5))
mathFunc = getMathFunc(type: "square")
print(mathFunc(5))
mathFunc = getMathFunc(type: "other")
print(mathFunc(5))

func getTempMathFunc(type: String) -> (Int) -> Int {
    //定义一个计算平方的函数
    func square(varl: Int) -> Int {
        return varl * varl
    }
    //定义一个计算立方的函数
    func cube(varl: Int) -> Int {
        return varl * varl * varl
    }
    //定义一个计算阶乘的函数
    func factorial(varl: Int) -> Int {
        var result = 1
        for index in 2...varl {
            result *= index
        }
        return result
    }
    switch type {
    case "square":
        return square
    case "cube":
        return cube
    default:
        return factorial
    }
}
var currentMathFunc = getTempMathFunc(type: "cube")
print(currentMathFunc(5))
currentMathFunc = getTempMathFunc(type: "square")
print(currentMathFunc(5))
currentMathFunc = getTempMathFunc(type: "other")
print(currentMathFunc(5))


func getMathFunc1(type: String) -> (Int) -> Int {
    switch type {
    case "square":
        return {(val: Int) -> Int in
            return val * val
        }
    case "cube":
        return {(val: Int) -> Int in
            return val * val * val
        }
    default:
        return {(val: Int) -> Int in
            var result = 1
            for index in 2...val{
                result *= index
            }
            return result
        }
    }
}
var currentMathFunc1 = getMathFunc1(type: "cube")
print(currentMathFunc1(5))
currentMathFunc1 = getMathFunc1(type: "square")
print(currentMathFunc1(5))
currentMathFunc1 = getMathFunc1(type: "other")
print(currentMathFunc1(5))
*/

enum Season {
    case Spring
    case Summer
    case Fall
    case Winter
}

enum Weekday {
    case Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday
}

var day : Weekday
day = Weekday.Sunday
day = .Wednesday
print(day)

var chooseday = Weekday.Saturday
switch chooseday {
case .Monday:
    print("星期一，准备上班")
case .Tuesday, .Wednesday:
    print("星期二，三,放假还远")
case .Thursday:
    print("星期四，在坚持一天")
case .Friday:
    print("星期五，准备放假")
case .Saturday:
    print("星期六，快乐的一天")
case .Sunday:
    print("星期天，就这么快过了一天？")
}

switch chooseday{
case .Monday:
    print("星期一，准备上班")
default:
    print("要么在放假，要么在准备放假")
}

enum TheWeekday: Int {
    case Monday,Thuseday = 1,Wednesday = 5,Turseday,Friday,Saturday,Sunday
}

//init?(rawValue:):

var day1 = Weekday.Monday
print(".Monday original Value is:\(day1.hashValue)")
day1 = Weekday.Saturday
print(".Saturday original Value is:\(day1.hashValue)")

enum Plant {
    case Mercury(weight:Double, density: Double, name:String)
    case Venus(Double, Double)
    case Earth(Double, String)
    case Mars(density: Double, name:String)
    case Jupiter
    case Saturn
    case Uranus
    case Nepturn
}
var p1 = Plant.Mercury(weight: 0.05, density: 5.43, name: "水星")
var p2 = Plant.Venus(0.815, 5.25)
var p3 = Plant.Earth(1.0, "地球")
var p4 = Plant.Mars(density: 3.95, name: "火星")
/*
 switch p3{
 case: Plant.Earth(let weight:Double, let name:String)
 print("该行星的名字为：\(name),质量相当于：\(weight)个地球")
 default:
 break
 }
 */
/*
 switch p1{
 case: let .Venus(weight, density)
 print("该行星的质量相当于：\(weight)个地球,密度为：\(density)")
 case: let .Mercury(weight: w, density: d, name:n)
 print("该行星的名字为：\(name),质量相当于：\(weight)个地球,密度为：\(density)")
 default:
 break
 }
 */

class Person {
    var name: String = ""
    var age: Int = 0
    func say(content: String){
        print(content)
    }
}

struct Dog {
    var name: String
    var age: Int
    func run() -> Void {
        print("\(name)迅速的奔跑～")
    }
}

var p: Person
p = Person()
p.name = "孙悟空"
p.say(content: "学习Swift很简单，学习很容易！")
print(p.name)

var dog = Dog(name: "旺财", age: 4)
print(dog.name)
dog.run()

var p5 = p
p5.name = "猪八戒"
print(p5.name,p.name)

var dog1 = dog
dog1.name = "Tony"
print(dog1.name,dog.name)

class User {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var u1 = User(name:"abc", age: 12)
var u2 = User(name:"abc", age: 12)
print(u1 === u2)
print(u1 !== u2)

var u3 = u1
print(u1 === u3)
print(u1 !== u3)

struct Level {
    var grade: Int
}

var lv1 = Level(grade: 20)
var lv2 = Level(grade: 20)
//print(lv1 === lv2)
//print(lv1 !== lv2)

//var result = u1 == u2
//print(result)

func == (left: User, right: User) -> Bool {
    return left.name == right.name && left.age == right.age
}
func != (left: User, right: User) -> Bool {
    return !(left == right)
}

class TempDog {
    func jump() -> Void {
        print("正在执行jump的方法")
    }
    func run() -> Void {
        jump()
        print("正在执行run的方法")
    }
}
var tempDog = TempDog()

print(tempDog.run())



class Wolf {
    var name: String = ""
    var age: Int = 2
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    func info() -> Void {
        print("我的名字是\(name),年龄是\(age)")
    }
}
var wolf = Wolf(name: "灰太狼",age: 8)
wolf.info()
/*
 class ReturnSelf {
 var age: Int = 0
 func grow() -> ReturnSelf {
 age++
 return self
 }
 }
 var rt = ReturnSelf()
 rt.grow()
 .grow()
 .grow()
 print("rt的age属性是：\(rt.age)")
 */

struct FixedLengthRange {
    var start: Int
    let length: Int
}
var rg = FixedLengthRange(start: 2, length: 10)
print("rg的起点为:\(rg.start),长度为：\(rg.length)")
rg.start = 5
print("rg的起点为:\(rg.start),长度为：\(rg.length)")
//rg.length = 8

struct FKRange {
    var start: Int
    let length: Int
}
let rg1 = FKRange(start: 2, length: 10)
print("rg1的起点为:\(rg1.start),长度为：\(rg1.length)")
//rg1.start = 5

class Dept {
    var id: Int, info: String
    init(id: Int) {
        self.id = id
        //暂停两秒，模拟耗时操作
        Thread.sleep(forTimeInterval: 2)
        self.info = "模拟读取数据库"
    }
}
class TempUser {
    var id: Int = 0
    lazy var dept = Dept(id: 20)
    //    var dept = Dept(id: 20)
    var nicks = [String]()
}
var user = TempUser()
user.nicks.append("孙悟空")
user.nicks.append("齐天大圣")
print(user.nicks)


enum TempSeason {
    case Spring,Summer,Fall,Winter
    //定义计算属性，计算属性的本质就是getter和setter方法的组合
    var info: String{
        get{
            print("正在执行getter方法")
            switch self {
            case .Spring:
                return "春暖花开"
            default:
                return "长恨春归无觅处"
            }
        }
        //定义set部分代码
        set(newValue){
            print("正在执行setter方法，传入参数为:\(newValue)")
        }
    }
}
var s = TempSeason.Spring
print(s.info)
s.info = "秋高气爽"

class TempUser1 {
    var first: String = ""
    var second: String = ""
    var fullName:String{
        get{
            return first + "-" + second
        }
        set(newValue){
            var name = newValue.components(separatedBy: "-")
            self.first = name[0]
            self.second = name[1]
        }
    }
    init(first: String, last: String) {
        self.first = first
        self.second = last
    }
}
let ss = TempUser1(first: "悟空", last: "孙")
print(ss.fullName)
ss.fullName = "八戒-猪"
print(ss.first)
print(ss.second)


class Person1 {
    var name: String = "" {
        willSet{
            if newValue.count > 6 || newValue.count < 2 {
                print("您设置的人名：\(newValue)不符合要求，请重新设置！")
            }else{
                print("人名设置成功！")
            }
        }
        didSet{
            print("人名设置完成，被修改的原名为:\(oldValue)")
        }
    }
    
    var age: Int = 0 {
        willSet{
            if newValue > 100 || newValue < 0 {
                print("您设置的年龄：\(newValue)不符合要求，请重新设置！")
            }else{
                print("年龄设置成功！")
            }
        }
        didSet{
            print("年龄设置完成，被修改的年龄为:\(oldValue)")
        }
    }
}
var pp = Person1()
pp.age = 1000
pp.age = 30
print("成功设置age属性后，age为：\(pp.age)")
pp.name = "孙悟空"
print("成功设置name属性后，name为：\(pp.name)")



let arr = [8,2,1,0,3]
let index = [2,0,3,2,4,0,1,3,2,3,3]
var tel: String = ""

for j in index{
    
    tel += String(arr[j])
}
print("联系方式:\(tel)")
/*
 NSArray *arr = @[@8,@2,@1,@0,@3];
 NSArray *index = @[@2,@0,@3,@2,@4,@0,@1,@3,@2,@3,@3];
 NSMutableArray *tel = [NSMutableArray array];
 for (NSNumber *i in index) {
 NSInteger a = [i integerValue];
 [tel addObject:arr[a]];
 }
 NSString *string = [[tel copy] componentsJoinedByString:@""];
 NSLog(@"联系方式:%@",string);
 联系方式:18013820100
 int[] arr = new int[](8,2,1,0,3);
 int[] index = new int[](2,0,3,2,4,0,1,3,2,3,3);
 String tel = "";
 for (int i : index){
 tel += arr[i];
 }
 system.out.println("联系方式:"+tel);
 */

class SomeClass {
    func test() -> Void {
        print("==test method==")
    }
    class func bar(msg: String) {
        print("==bar==,传入参数:\(msg)")
    }
}
var sc = SomeClass()
var f1: () -> () = sc.test
var f2: (String) -> Void = SomeClass.bar
sc.test()
f1()
SomeClass.bar(msg: "测试信息")
f2("测试信息")

enum Gender {
    case Male, Female
    func info(msg: String, count: Int, name: String) -> Void {
        for index in 1...count {
            print("\(msg)---\(index)---\(name)")
        }
    }
}
Gender.Male.info(msg: "测试信息", count: 5, name: "白骨精")

struct FKRange1 {
    var start: Int
    var length: Int
    func draw(color: String, w width:Double, height: Double) -> Void {
        print("在宽:\(width),高:\(height)的纸张上使用\(color)颜色画图")
        print("绘制范围为\(self.start)->\(self.length)")
    }
}
var r = FKRange1(start:5, length:10)
r.draw(color: "红色", w: 12.1, height: 23.5)

class Person2 {
    var name: String
    init(name: String) {
        self.name = name
    }
    func eat(food: String, drink: String, cigarette: String) -> Void {
        print("\(self.name)吃着\(food),喝着\(drink),抽着\(cigarette)")
    }
}
var ppp = Person2(name:"猪八戒")
ppp.eat(food: "炸鸡", drink: "啤酒", cigarette: "雪茄")

class counter {
    var count: Int = 0
    func incrementByStep(step: Int, numberOfTime times: Int) -> Void {
        count += step * times
    }
}
var ct = counter()
ct.incrementByStep(step: 2, numberOfTime: 5)
print(ct.count)

struct FkRect {
    var x: Int
    var y: Int
    var  width: Int
    var height: Int
    mutating func moveByX(x: Int, y: Int){
        self.x += x
        self.y += y
    }
}
var rect = FkRect(x:20,y:12,width:200,height:300)
rect.moveByX(x: 100, y: 80)
print("rect矩形的左上角的X坐标为:\(rect.x),y坐标为:\(rect.y)")
let rt = FkRect(x:20,y:12,width:200,height:300)
rect.moveByX(x: 20, y: 40)
print("rect矩形的左上角的X坐标为:\(rect.x),y坐标为:\(rect.y)")
*/

/*
 FourDayDemoOne
struct FkRect {
    var x: Int
    var y: Int
    var width: Int
    var height: Int
    //定义下标，指定下标只接受一个Int类型的参数，下标的返回值类型为Int
    subscript(idx: Int) -> Int {
        //定义下标get部分
        get{
            switch idx {
            case 0:
                return self.x
            case 1:
                return self.y
            case 2:
                return self.width
            case 3:
                return self.height
            default:
                print("不支持该索引值")
                return 0
            }
        }
        set {
            switch idx {
            case 0:
                self.x = newValue
            case 1:
                self.x = newValue
            case 2:
                self.x = newValue
            case 3:
                self.x = newValue
            default:
                print("不支持该索引值")
            }
        }
    }
}
var rect = FkRect(x:20, y:12, width:200, height:300)
rect[0] = 40
rect[1] = 67
print("rect矩形的左上角的x坐标为:\(rect[0]),y坐标为:\(rect[1]))")


extension String {
    subscript (idx: Int) -> String {
        get {
            if idx > -1 && idx < self.count {
                var count = 0
                var result = ""
                //通过遍历搜索字符串内指定索引处的字符
                for ch in self {
                    if count == idx {
                        result = "\(ch)"
                    }
                    count += 1
                }
                return result
            }else {
                return ""
            }
        }
        set {
            var result = ""
            var count = 0
            for ch in self {
                if count == idx {
                    result += newValue
                }else {
                    result += "\(ch)"
                }
                count += 1
            }
            self = result
        }
    }
    //定义只读下标
    subscript(start: Int, end: Int) -> String {
        if start > -1 && start < self.count && end > -1 && end <= self.count && start < end {
            var result = ""
            var count = 0
            for ch in self {
                if count >= start && count < end {
                    result.append(ch)
                }
                count += 1
            }
            return result
        }else {
            return ""
        }
    }
}
var s = "dsafasgavkavjaklfnasihnbvioans"
print(s[5])
s[0] = "D"
s[2] = "A"
print(s)
print(s[2,6])


class Customer {
    var name = ""
    var emp: Employee?
    init(name: String) {
        self.name = name
    }
}

class Employee {
    var name = "白骨精"
    var title = "销售客服"
    var company: Company!
    init(name: String, title: String) {
        self.name = name
        self.title = title
    }
}

class Company {
    var name = "疯狂软件教育中心"
    var addr = "广州市天河区"
    init(name: String, addr: String) {
        self.name = name
        self.addr = addr
    }
}

var c = Customer(name:"孙午觉")
var emp = Employee(name:"知足净", title:"售后客服")
c.emp = emp
emp.company = Company(name:"蛋白质销售公司",addr:"盘丝洞")
print("为\(c.name)服务的公司是：\(c.emp!.company.name)")
/*
 var c2 = Customer(name: "唐僧")
 c2.emp = Employee(name:"金币柏树精", title:"普通客服")
 print("为\(c2.name)服务的公司是：\(c2.emp!.company.name)")
 
 var c3 = Customer(name: "唐僧")
 print("为\(c3.name)服务的公司是：\(c3.emp!.company.name)")
 */
var c2 = Customer(name: "唐僧")
c2.emp = Employee(name:"金币柏树精", title:"普通客服")
print("为\(c2.name)服务的公司是：\(c2.emp?.company?.name)")

var c3 = Customer(name: "唐僧")
print("为\(c3.name)服务的公司是：\(c3.emp?.company?.name)")

print("为\(c.name)服务的公司是：\(c.emp?.company?.name)")

//此处枚举包含类型属性
enum Season {
    static var desc: String?
    static let name = "季节"
    static var info: String{
        get{
            return "代表季节的枚举，起desc为:\(desc)"
        }set{
            print("程序尝试对info计算属性进行赋值:\(newValue)")
        }
    }
}
Season.desc = "季节累"
print(Season.name)
Season.info = "新的info"
print(Season.info)


//此处结构体包含类型属性
struct FkRange {
    static var desc : String?
    static let maxWidth = 10000
    static let maxHeight = 40000
    static var maxArea: Int {
        return maxWidth * maxHeight
    }
}
FkRange.desc = "描述范围的结构体"
print(FkRange.desc)
print(FkRange.maxWidth)
print(FkRange.maxHeight)
print(FkRange.maxArea)

//此处类包含类型属性
class User {
    class var nameMaxLength: Int {
        get{
            return 24
        }
        set {
            print("程序尝试对User类的nameMaxLength类型计算属性赋值:\(newValue)")
        }
    }
}
print(User.nameMaxLength)
User.nameMaxLength = 20

//此处枚举包含类型方法
enum Season1 {
    static var desc: String?
    static let name = "季节"
    static func info() {
        print("季节的info方法，该类的name存储属性为:\(name)")
    }
    static func setDesc(desc: String){
        self.desc = desc
    }
}
Season1.info()
Season1.setDesc(desc: "描述季节变化的枚举")
print(Season.desc)

//此处类包含类型方法
class Math {
    class var pi: Double {
        return 3.1415926525897
    }
    class func abs(value: Double) -> Double {
        return value < 0 ? -value : value
    }
    class func pow(base: Double, _ exponent: Int) -> Double{
        var result = 1.0
        for idx in 1...exponent {
            result *= base
        }
        return result
    }
    class func radian2Degree(radian: Double) -> Double{
        return radian * 180 / pi
    }
    class func degree2Radian(degree: Double) -> Double{
        return degree * self.pi / 180
    }
}
print(Math.pow(base: 2, 4))
print(Math.radian2Degree(radian: 1.57))
print(Math.degree2Radian(degree: 45))

struct FkPoint {
    var left: Int = 0
    var top: Int = 0
    init(left: Int) {
        self.left = left
    }
}
var p1 = FkPoint(left: 20)
//var p2 = FkPoint()
//var p3 = FkPoint(left:20,top:14)

class Person {
    var name: String?
    var gender: String?
    var age = 0
    init(_ name: String, _ gender: String) {
        self.name = name
        self.gender = gender
    }
}
var p = Person("孙悟空","男")
print(p.name)
print(p.gender)
/*在构造过程中常量属性是可修改的，在2.0版本可行
 class User1 {
 let maxAge = 100
 var name: String
 init(maxAge: Int,name: String) {
 print(self.maxAge)
 self.maxAge = Int.max
 print(self.maxAge)
 self.name = name
 self.maxAge = maxAge
 }
 }
 var u = User1(maxAge:120, name:"白骨精")
 print(u.maxAge)
 print(u.name)
 */

/*
 struct ClosureInit {
 var test: Int = {
 var dt = NSDate()
 var gregorian = NSCalendar.current
 //定义一个时间字段的旗标，指定将会获取指定月，日信息
 var unitFlags = NSCalendar.Unit.month | NSCalendar.Unit.day
 var comp = gregorian.component(unitFlags, from: dt)
 //获取当前月份
 var month = Int(comp.month)
 //获取当前第几日
 var day = Int(comp.day)
 return day - month
 }()
 }
 var ci = ClosureInit()
 print(ci.test)
 */

//值类型的构造器重载
struct ConstrictprOverload {
    var name: String!
    var amount: Int!
    //提供无参数的构造器
    init() {}
    //提供两个带参数的构造器来完成构造过程
    init(name: String, amount: Int) {
        self.name = name
        self.amount = amount
    }
}
var oc1 = ConstrictprOverload()
var oc2 = ConstrictprOverload(name:"疯狂Swift讲义",amount:800000)
print("\(oc1.name) \(oc1.amount)")
print("\(oc2.name) \(oc2.amount)")

struct Apple {
    var name: String
    var color: String
    var weight: Double!
    init(_ name: String, _ color: String) {
        self.name = name
        self.color = color
    }
    init(name: String, color: String) {
        self.init(name, color)
    }
    init(appleName n: String, appleColor c: String) {
        self.init(n, c)
        print("执行显示指定外部形参名的构造器==\(self.name)")
    }
    init(name: String, color: String, weight: Double) {
        self.init(name, color)
        self.weight = weight
    }
}
var ap1 = Apple("红富士","风红色")
print("\(ap1.name)--->\(ap1.color)")
var ap2 = Apple(appleName:"青苹果",appleColor:"绿色")
print("\(ap2.name)--->\(ap2.color)")
var ap3 = Apple(name:"美国苹果",color:"红色",weight:0.45)
print("\(ap3.name)--->\(ap3.weight)--->\(ap3.color)")


//结构体与可能失败的构造器
struct Cat {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}
let c1 = Cat(name: "Kitty")
if c1 != nil {
    print("c1的name为:\(c1!.name)")
}
let cc2 = Cat(name:"")
print(cc2 == nil)

//枚举与可能失败的构造器
enum Season2 {
    case Spring,Summer,Autumn,Winter
    init!(name: Character) {
        switch name {
        case "S","s":
            self = .Spring
        case "U","u":
            self = .Summer
        case "A","a":
            self = .Autumn
        case "W","w":
            self = .Winter
        default:
            return nil
        }
    }
}
let s1 = Season2(name: "s")
if s1 != nil {
    print("Season2实例构造成功")
}
let s2 = Season2(name: "x")
print(s2 == nil)
*/

/*
 FiveDayDemoOne
class Fruit {
    var weight = 0.0
    func info() {
        print("我是一个水果,重\(weight)g")
    }
}
class Apple: Fruit {
    var name: String!
    func taste() {
        print("\(name)吃起来很好吃")
    }
}
var a = Apple()
a.weight = 56
a.name = "红富士"
a.info()
a.taste()

class Bird {
    var speed: Double = 0
    
    func fly() {
        print("我在天空自由自在的飞翔...")
    }
}
class Ostrich: Bird {
    //重写父类中定义的speed属性
    override var speed: Double {
        get {
            print("正在访问被重写的属性")
            return super.speed
        }
        set {
            super.speed = newValue * newValue
        }
    }
    
    /*通过属性观察者重写了负累中定义的speed存储属性
     override var speed: Double {
     didSet {
     print("改变之前的speed为:\(oldValue)")
     super.speed *= speed
     }
     }
     */
    
    override func fly() {
        print("我只能在地上奔跑...")
    }
}
var os = Ostrich()
os.speed = 20.0
print("os的速度为:\(os.speed)")
os.fly()

class Base {
    subscript(idx: Int) -> Int {
        get {
            print("父类下标的get方法")
            return idx + 10
        }
    }
}
class Sub: Base {
    override subscript(idx: Int) -> Int {
        get {
            print("重写后下标的get方法")
            print("通过super访问被重写之前的下标为\(super[idx])")
            return idx * idx
        }
        set {
            print("重写后的下标的setter方法，传入的参数值为:\(newValue)")
        }
    }
}
var base = Base()
print(base[7])
var sub = Sub()
print(sub[7])
sub[7] = 90

final class Base1 {
    final var name: String = ""
    final func say(content: String) {
        print("Base实例说:\(content)")
    }
    final subscript(idx: Int) -> Int {
        get {
            print("父类的下标的get方法")
            return idx + 10
        }
    }
}
/*
 class Sub1: Base1 {
 override var name: String {
 get {
 return "子类添加的前缀" + super.name
 }
 set {
 
 }
 }
 }
 */
*/

/*
 FiveDayDemoTwo
class Appel {
    var name: String!
    var weight: Double
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
    convenience init(n name: String, w weight: Double) {
        self.init(name: name, weight: weight)
        self.name = name
    }
}
/*
 var app1 = Appel(n: "红富士", w = 1.2)
 var app1 = Appel(name: "花牛过", weight = 2.4)
 */

class Fruit {
    var name: String
    var weight: Double
    init(name: String) {
        self.name = name
        self.weight = 0.0
    }
    convenience init(name: String, weight:  Double) {
        self.init(name: name)
        self.weight = weight
    }
    convenience init(n name: String, w weight: Double) {
        self.init(name: name)
    }
}
class Apple: Fruit {
    var color: String
    init(name: String, weight: Double, color: String) {
        self.color = color
        super.init(name: name)
        self.weight = weight
    }
    init() {
        self.color = ""
        super.init(name: "")
        self.weight = 0.0
    }
    convenience init(name: String, color: String) {
        self.init(name: name, weight: 0.0, color: color)
    }
    convenience init(n name: String, c color: String) {
        self.init(name: name, color: color)
    }
}

//var a = Appel(color: "绿色")

class User {
    var name: String!
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}
class Student: User {
    var grade: Int!
    init!(name: String, grade: Int) {
        super.init(name: name)
        print("---super.init(name:\(name)之后---")
        if grade < 1 {
            return nil
        }
        self.grade = grade
    }
}
let s1 = Student(name: "孙悟空", grade: 4)
print("s1的name:\(s1?.name),s1的grade:\(s1?.grade)")
let s2 = Student(name: "白骨精", grade: 0)
print(s2 == nil)
let s3 = Student(name: "", grade: 3)
print(s3 == nil)


class Fruit1 {
    var name: String
    var weight: Double
    init(name: String) {
        self.name = name
        self.weight = 0.0
    }
    deinit {
        print("程序准备释放Fruit1")
    }
}
class Apple1: Fruit1 {
    var color: String
    init(name: String, weight: Double, color: String) {
        self.color = color
        super.init(name: name)
    }
    deinit {
        print("程序准备释放Apple1")
    }
}
var ap: Apple1? = Apple1(name: "红富士", weight:0.34, color: "红色")
print(ap!.name + "--->" + ap!.color)
ap = nil


class BaseClass {
    func base() {
        print("父类的普通方法")
    }
    func test() {
        print("父类的被覆盖的方法")
    }
}
class SubClass: BaseClass {
    override func test() {
        print("子类的覆盖父类的放法")
    }
    func sub() {
        print("子类的普通放发")
    }
}
let bc: BaseClass = BaseClass()
bc.test()
bc.base()
let sc: SubClass = SubClass()
sc.base()
sc.test()
let ploymophicBc: BaseClass = SubClass()
ploymophicBc.base()
ploymophicBc.test()
//ploymophicBc.sub()


@objc protocol TestProtocol{}
/*
 let hello: NSObject = "Hello"
 print("字符串是否是NSString类的实例：\(hello is NSString)")
 */
let a: String = "Hello"
print("字符串是否是Math类的实例：\(a is NSDate)")

//let obj: NSObject = "hello"
class Fruit2 {
    var name: String
    var weight: Double
    init(name: String, weight: Double) {
        self.name = name
        self.weight = weight
    }
}
class Apple2: Fruit2 {
    var color: String
    init(name: String, weight: Double, color: String) {
        self.color = color
        super.init(name: name, weight: weight)
    }
}
class Grape: Fruit2 {
    var sugarRate: Double
    init(name: String, weight: Double, sugarRate: Double) {
        self.sugarRate = sugarRate
        super.init(name: name, weight: weight)
    }
}
var fruits:[Fruit2] = [Apple2(name:"红富士", weight: 1.8, color:"粉红"),Apple2(name:"花牛过", weight: 2.3, color:"红色"),Grape(name:"巨峰", weight: 1.4, sugarRate:0.34),Grape(name:"红富士", weight: 1.8, sugarRate:0.45)]
for f in fruits {
    if let  ap = f as? Apple2 {
        print("\(ap.name)的颜色为:\(ap.color)")
    }else if let gp = f as? Grape {
        print("\(gp.name)的糖分为为:\(gp.sugarRate)")
    }
}

var anyArray:[Any] = ["swift", 29, ["ios": 89, "andriod": 92], Fruit2(name: "殷桃",weight:2.3),Apple2(name:"红富士",weight:2.4,color:"粉红")]
for element in anyArray {
    if let f = element as? Fruit2 {
        print("\(f.name)水果重\(f.weight)")
    }
}
var anyObjectArray:[AnyObject] = [Fruit2(name: "殷桃",weight:2.3),Apple2(name:"红富士",weight:2.4,color:"粉红")]


class User1 {
    var holiday: [Weekday]
    var location: Point
    init(holiday: [Weekday],location:Point) {
        self.holiday = holiday
        self.location = location
    }
    struct Point {
        var latitude: Double
        var longituda: Double
        var positon: Orientation
        enum Orientation {
            case Up,Left,Bottom,Rigth
        }
    }
    enum Weekday {
        case Monday,Tuesday,Wednessday,Thursday,Friday,Satuaday,Sunday
        struct Duration {
            var num: Double
            var unit: String
        }
    }
    
}
var user2 = User1(holiday:[],location:User1.Point(latitude:-23.33,longituda:122.11,positon:User1.Point.Orientation.Left))
user2.holiday.append(User1.Weekday.Satuaday)
user2.holiday.append(User1.Weekday.Sunday)


//类型计算属性扩展
extension String{
    static var data: [String:Any] = [:]
    var length: Int {
        get {
            return self.count
        }
        set {
            var originLength = self.count
            if newValue > originLength {
                for idx in 1...newValue - originLength {
                    self += " "
                }
            }
            else if newValue < originLength {
                var temp = ""
                var count = 0
                for ch in self {
                    temp = "\(temp)\(ch)"
                    count += 1
                    if count == newValue {
                        break
                    }
                }
                self = temp
            }
        }
    }
}
String.data["swift"] = 89
String.data["OC"] = 92
print(String.data)
var s = "fkit.org"
print(s.length)
s.length = 5
print(s)
s.length = 20
print(s)


extension String {
    func substringFromStart(start: Int, toEnd: Int) -> String {
        var count = 0
        var temp = ""
        for ch in self {
            if count > start {
                temp = "\(temp)\(ch)"
            }
            if count >= toEnd - 1 {
                break
            }
            count += 1
        }
        return temp
    }
    static func valueOf(value: Bool) -> String {
        return "\(value)"
    }
}
var str = "fkit.orgisagoodcenter"
var subStr = str.substringFromStart(start: 5, toEnd: 10)
print(subStr)
print(String.valueOf(value: true))
print(String.valueOf(value: false))

/*
 extension Array {
 mutating func retainAll(array: [T], compartor:(T,T) -> Bool) {
 var temp = [T]()
 for ele in self {
 for target in array {
 if compartor(ele, target) {
 temp.appen(ele)
 break
 }
 }
 }
 self = temp
 }
 }
 var books = ["iOS","Andriod","Swift","Java","Ruby","PHP"]
 books.retainAll(["Andriod","iOS","C"]) {
 return $0 = $1
 }
 print(books)
 */

struct SomeStruct {
    var name: String
    var count: Int
}
extension SomeStruct {
    init(name: String) {
        self.name = name
        self.count = 0
    }
    init(count: Int) {
        self.count = count
        self.name = ""
    }
}
var sc1 = SomeStruct(name:"fkit",count: 5)
var sc2 = SomeStruct(name:"crazyfkit")
var sc3 = SomeStruct(count: 20)


extension String {
    enum Suit : String {
        case Diamond = "♦️"
        case Club = "♣️"
        case Heart = "♥️"
        case Spade = "♠️"
    }
    static func judgeSuit(s: String) -> Suit? {
        switch s {
        case "♦️":
            return .Diamond
        case "♣️":
            return .Club
        case "♥️":
            return .Heart
        case "♠️":
            return .Spade
        default:
            return nil
        }
    }
}
var s4: String.Suit? = String.judgeSuit(s: "♥️")
print(s4)
var s5: String.Suit? = String.judgeSuit(s: "j")
print(s5)
*/


/*
 SixthDayDemoOne
protocol Strokable {
    var strokeWidth: Double {get set}
}

protocol Fullable {
    var fullColor: Color? {get set}
    
}

enum Color {
    case Red, Green, Blue, Yellow, Cyan
}

protocol HasArea: Fullable,Strokable {
    var area: Double { get }
}
/*
 protocol Mathable {
 class var pi: Double {get}
 class var e: Double {get}
 }
 
 struct Rect: HasArea,Mathable {
 var width: Double
 var height: Double
 init(width: Double, heigth: Double) {
 self.width = width
 self.height = heigth
 }
 var fullColor: Color?
 var strokeWidth: Double = 0.0
 var area: Double {
 get {
 return width * height
 }
 }
 static var pi: Double = 3.14159535
 static var e: Double = 2.71828
 }
 
 class Circle: HasArea, Mathable {
 var radius: Double
 init(radius: Double) {
 self.radius = radius
 }
 var fullColor: Color?
 var strokeWidth: Double
 var area: Double {
 get {
 return Circle.pi * radius * radius
 }
 class var pi: Double { return 3.14150535 }
 class var e: Double { returen 2.17828 }
 }
 }
 
 var rect = Rect(width: 4.5, height: 4.0)
 print(rect.area)
 
 
 
 protocol Eatable {
 func taste()
 class func test(msg: String...)
 }
 
 */


protocol Incrementable {
    mutating func incrementByDelta(delta: Double)
}
struct FkRange: Incrementable {
    var start: Double
    var length: Double
    mutating func incrementByDelta(delta: Double) {
        self.length += delta
    }
}
class Circle: Incrementable {
    var radius: Double
    init(radius: Double) {
        self.radius = radius
    }
    func incrementByDelta(delta: Double) {
        self.radius += delta
    }
}
var range = FkRange(start: 2.0, length: 10.0)
range.incrementByDelta(delta: 5.0)
print(range.length)
var circle = Circle(radius: 3.0)
print(circle.radius)



protocol Mathable {
    subscript(idx: Int) -> Int {get}
    subscript(a: Int, b: Int) -> Int {get}
}
struct LinearStruct: Mathable {
    var factor: Int
    subscript(idx: Int) -> Int {
        get {
            return factor * idx
        }
        set {
            print("执行LinearStruct的下标值")
        }
    }
    subscript(a: Int, b: Int) -> Int{
        return factor * a + b
    }
}

class Quadratic: Mathable {
    var factor: Int
    init(factor: Int) {
        self.factor = factor
    }
    subscript(idx: Int) -> Int {
        return factor * factor * idx
    }
    subscript(a: Int, b: Int) -> Int{
        return factor * factor * a + b
    }
}
var q = Quadratic(factor: 5)
print(q[4])
print(q[4,6])
var line = LinearStruct(factor: 5)
print(line[4])
print(line[4,6])

protocol Initable {
    init(name: String)
    init(name: String, weight: Double)
}
struct Bag: Initable {
    var name: String
    var weight: Double
    init(name: String) {
        self.name = name
        self.weight = 0.0
    }
    init(name: String, weight: Double) {
        self.init(name: name)
        self.weight = weight
    }
}
class Fruit {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Apple: Fruit,Initable {
    var weight: Double
    override required init(name: String) {
        self.weight = 0.0
        super.init(name: name)
    }
    required convenience init(name: String, weight: Double) {
        self.init(name: name)
        self.weight = weight
    }
}
var ap1 = Apple(name: "红富士")
var ap2 = Apple(name: "花流过", weight: 2.3)
print("\(ap2.name),\(ap2.weight)")
var bag1 = Bag(name: "书包")
var bag2 = Bag(name: "旅行包", weight:20.2)
print("\(bag2.name),\(bag2.weight)")
/*
 var food1: Equatable = Apple(name: "红富士")
 var food2: Equatable = Pipe(weight: 1.2)
 food1.taste()
 food2.taste()
 */


protocol Equatable {
    func tasete()
}
extension String: Equatable {
    func tasete() {
        print("\(self)吃起来味道不错，呵呵")
    }
}
func eat(foods: Equatable...) {
    for food in foods {
        food.tasete()
    }
}
eat(foods: "Swift","Objective-C","iOS")


protocol Emptyable {
    var isEmpty: Bool{ get }
}
extension String: Emptyable {}
func foo(arg: Emptyable) {
    print("arg是否为空:\(arg.isEmpty)）")
}
foo(arg: "fkit")
foo(arg: "")

protocol Movealble: class {
    func move()
}
class Car: Movealble {
    func move() {
        print("汽车在马路上飞驰...")
    }
}
/*
 struct Bee: Movealble {
 func move() {
 print("蜜蜂在空中飞舞...")
 }
 }
 var move:Movealble? = nil
 */
/*
 @objc protocol MyProtocol {
 optional var status: String {get}
 optional func increment(val: Int)
 optional subscript(idx: Int) -> Int{get}
 }
 
 class EmptuClass: MyProtocol {
 
 }
 class MyClass: MyProtocol {
 var name: String
 init(name: String) {
 self.name = name
 }
 var status: String {
 if name.count < 10 {
 return "良好"
 }else{
 return "超长"
 }
 }
 func increment(val: Int) {
 print("系统正在增加长度")
 for idx in 1...val {
 name += "="
 }
 }
 }
 var mp: MyProtocol = MyClass(name: "蜂窝软件")
 print(mp.status)
 mp.increment(val: 10)
 print(mp.status)
 var ec:MyProtocol = EmptuClass()
 print(ec.status)
 print(ec[2])
 ec.increment(val: 10)
 */

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var person = Person(name: "孙悟空", age:500)
print(person)



class User {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    deinit {
        print("\(self.name)用户即将被销毁")
    }
}
var user1:User?
var user2:User?
var user3:User?
user1 = User(name: "孙悟空", age: 500)
user2 = user1
user3 = user1
user3 = nil
user2 = nil
print("------------")
user1 = nil

class Student {
    var name: String
    var age: Int
    var coach: Coach?
    init(name: String, age: Int) {
        self.age = age
        self.name = name
    }
    deinit {
        print("\(self.name)学生即将被销毁")
    }
}
class Coach {
    var name: String
    var skill: String
    //    var student: Student?
    //    weak var student: Student?
    unowned let student: Student
    //    init(name: String, skill: String) {
    //        self.skill = skill
    //        self.name = name
    //    }
    init(name: String, skill: String, student: Student) {
        self.skill = skill
        self.name = name
        self.student = student
    }
    deinit {
        print("\(self.name)教练即将被销毁")
    }
}
//var stu: Student? = Student(name: "孙悟空", age: 500)
//var coach: Coach? = Coach(name: "唐僧", skill: "念经")
//stu?.coach = coach
//coach?.student = stu
//stu = nil
//coach = nil
var stu: Student? = Student(name: "孙悟空", age: 500)
var coach: Coach? = Coach(name: "唐僧", skill: "念经", student: stu!)
stu?.coach = coach
stu = nil
coach = nil

/*
 class Student1 {
 var name: String
 var age: Int
 lazy var studentInfo: () -> String = {
 "学生名为:\(self.name),年龄为:\(self.age)"
 }
 init(name: String, age: Int) {
 self.age = age
 self.name = name
 }
 deinit {
 print("\(self.name)学生即将被销毁")
 }
 }
 var stu1: Student1? = Student1(name: "孙悟空", age: 500)
 var info: (() -> Student2)? = stu1!.studentInfo
 stu1 = nil
 info = nil
 */

/*
 class Student2 {
 var name: String
 var age: Int
 lazy var studentInfo: () -> String = {
 [unowned self] in "\(self.name),\(self.age)"
 }
 init(name: String, age: Int) {
 self.age = age
 self.name = name
 }
 deinit {
 print("\(self.name)学生即将被销毁")
 }
 }
 var stu2: Student2? = Student2(name: "孙悟空", age: 500)
 var info: (() -> Student2)? = stu2!.studentInfo
 stu2 = nil
 info = nil
 */
*/



func copyIntArray(scr:[Int], dest: inout [Int]) {
    for element in scr {
        dest.append(element)
    }
}
var arr = [29,2]
copyIntArray(scr: [12,8], dest: &arr)
print(arr)

func copyStringArray(scr: [String], dest: inout [String]) {
    for element in scr {
        dest.append(element)
    }
}
var strArr = ["Swift","iOS"]
copyStringArray(scr: ["Andriod","C"], dest: &strArr)
print(strArr)


func copyArray<T>(scr:[T], dest: inout [T]) {
    for element in scr {
        dest.append(element)
    }
}
var arr1 = [29,2]
copyArray(scr: [12,8], dest: &arr1)
print(arr1)

var doubleArr = [1.2,4.5]
copyArray(scr: [8.3,-1.2], dest: &doubleArr)
print(doubleArr)


func projection<ScrType, DescType> (src:[ScrType],fn:(ScrType) -> DescType) ->[DescType] {
    var result = [DescType]()
    for element in src {
        result.append(fn(element))
    }
    return result
}
var books = ["疯狂swift讲义", "疯狂iOS讲义", "疯狂Android讲义", "疯狂Java讲义"]
var proj1 = projection(src: books) {
    $0.count
}
print(proj1)
var proj2 = projection(src: books) {
    "《" + $0 + "》"
}
print(proj2)
var proj3 = projection(src: books) {
    (b: String) -> (String, String) in
    return (b, "李刚")
}
print(proj3)


struct FkRect<T> {
    var x: T
    var y: T
    var width: T
    var heigth: T
    var position: (T, T) {
        return (self.x, self.y)
    }
}
let rect = FkRect<Double> (x:1.2, y: 2.3, width: 8.4, heigth: 7.3)
let (x,y) =  rect.position
print("rect的位置位于(\(x),\(y)")

let rect1 = FkRect<Int> (x:2, y: 5, width: 10, heigth: 8)
let (left,top) =  rect1.position
print("rect的位置位于(\(left),\(top)")

class Apple<T> {
    var info: T
    init(info: T) {
        self.info = info
    }
}
var a1 = Apple<String>(info: "苹果")
print("a1的info信息是:\(a1.info)")
var a2 = Apple<Double>(info: 5.67)
print("a1的info信息是:\(a2.info)")

extension Apple {
    func bigThan(other:Apple,fn:(T,T) -> Int) -> Bool {
        if fn(self.info, other.info) > 0 {
            return true
        }else{
            return false
        }
    }
}
var a3 = Apple<String>(info: "红富士")
var a4 = Apple<String>(info: "澳洲青苹果")
var result = a3.bigThan(other: a4) {
    $0.count > $1.count ? 1 : 0
}
print("a3是否大于a2:\(result)")


protocol Container {
    associatedtype ItemType
    mutating func append(item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
}
struct IntList: Container {
    typealias ItemType = Int
    var items = [Int]()
    mutating func append(item: Int) {
        items.append(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}
struct List<E>:Container {
    var items = [E]()
    mutating func append(item: E) {
        items.append(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> E {
        return items[i]
    }
    
}
var list = IntList()
list.append(item: 20)
list.append(item: 12)
list.append(item: -9)
print("list的元素个数为:\(list.count)")
print("list中索引1处的元素为:\(list[1])")
var strList = List<String>()
strList.append(item: "Swift")
strList.append(item: "OC")
strList.append(item: "Ios")
print("strList的元素个数为:\(strList.count)")
print("strList中索引1处的元素为:\(strList[1])")

/*
 func copyCOntainer<C1: Container, C2: Container>(src: C1, dest: inout [C2]) where C1.ItemType == C2.ItemType, C1.ItemType: Printable {
 let count = src.count
 var temp = 0
 for _ in 0...count {
 temp += 1
 dest.append(src[temp])
 }
 
 }
 extension String: Printable {
 public var description: String {
 return self
 }
 }
 */
