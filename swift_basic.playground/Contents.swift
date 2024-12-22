import UIKit

//collection type
//: 스위프트에서 제공하는 데이터 묶음. 빌트인으로 Array,Dictionary,Set 세가지 제공

//1. Array
var numbers : Array<Int> = Array<Int>()
var names2 : [String] = []
var names = [String]() //가장 일반적
names.append("1")
names.insert("4", at: 1) //지정 idx는 배열의 크기 이하여야함.

print(names[1]) //4
names.remove(at: 1)
print(names) //["1"]


//2. Dictionary
//: 순서없이 키와 값의 쌍으로 데이터를 저장하는 타입
var dicInt : [Int:Int] = [:]
var dicStr : [String:String] = ["name":"James"]

dicInt[1] = 1

print(dicInt) //[1: 1]\
print(dicStr) //["name": "James"]\n"

dicStr["age"] = "14"
dicStr.removeValue(forKey : "age") //forKey 누락 안됨!

//3. Set
//: 같은 데이터 값을 순서없이 저장하는 리스트. 배열과 차이점은 중복된 값을 허용하지 않으며 순서가 없다.
var set: Set = Set<Int>()
set.insert(123)
set.insert(3)
set.insert(1)
set.insert(123) //[1, 3, 123], 에러는 발생하지 않으나 저장은 되지않는다!
print(set)

set.remove(123)
print(set) //[1, 3]

//------------------------------------

/*함수
 func 함수명(파라미터 명: 데이터타입)-> 반환타입 {
 //return 반환값
 
 }
 
 */
func sum(a: Int, b: Int) -> Int {
    return a+b
}

// 함수 적용
print(sum(a: 5, b: 3)) //8


// 반환타입이 void면 생략 가능. 그 외에는 생략 불가능
func SayHi()->Void{
    print("hello!")
}

func SayH2i(){
    print("hello!")
}

func greeting(friend : String, me: String = "sarah"){
    print("Hello! \(friend) I'm \(me)")
}
//함수 호출 시 매개변수 명을 지정해주어야한다.
greeting(friend:"james",me: "sarah")

//매개변수 기본값을 지정할 수 있다.
greeting(friend:"james")


/*
 swift는 전달인자레이블이란것이 존재한다. 함수 내부에서 사용하는 매개변수와 별개로 인수를 전달할 때 사용할 수 있는 레이블이다.
 func 함수명(전달인자레이블 매개변수명: 매개변수 타입, 전달인자레이블 매개변수명: 매개변수타입... ) -> 반환 타입 {
    return 반환 값
}
 
*/
func addNumbers(from first: Int, to second: Int) -> Int {
    return first + second
}

print(addNumbers(from: 5, to: 10)) // 15

// 전달인자 레이블을 _로 지정하면, 매개변수를 이름없이 호출할 수 있다. 단, 가독성이 떨어진다.
func greeting2(_ friend : String, _ me: String = "sarah"){
    print("Hello! \(friend) I'm \(me)")
}
greeting2("james" , "sarah")

//가변 매개변수 함수
// 매개변수의 갯수를 특정할 수 없다면 가변 매개변수를 사용할 수 있다.
// 가변매개변수는 0개 이상의 값을 받아올 수 있고 가변매개변수로 들어온 매개변수는 배열처럼 사용할 수 있다.
func sendMessage(me: String, friends: String...) {
    print("Hello \(friends)! I'm \(me)")
}

sendMessage(me: "sarah", friends: "minsoo", "suzi", "ann", "andy") //: Hello ["minsoo", "suzi", "ann", "andy"]! I'm sarah."


//switch
//swift의 조건문은 하나의 조건 중 하나 일치가 아니라, 여러개 조건 중 하나일치도 가능하다.

let andi = "2"
switch andi {
    case "1":
        print("1입니다.")
        // 패턴1과 일치할 때 실행되는 구문
    case "2", "3":
        print("2 또는 3 입니다.")
        //패턴2또는 패턴3 과 일치할 때 실행되는 구문
    default:
        print("다 아닙니다.")
        //어느 패턴에도 해당하지 않을 때 실행되는 구문
}

//이렇게 범위 지정도 가능하다.
let score = 95

switch score{
    case 0...30:
        print("F")
    case 31...50:
        print("D")
    case 51...70:
        print("C")
    case 71...90:
        print("B")
    default:
        print("A")
}


//guard 구문
//guard 구문은 다른 언어에는 없는 구문이다.
//함수나 메서드, 반복문등 블록 내부에 선언하여 함수의 조건을 검사할 때 많이 사용된다.

//js의 ealry return 과 유사하다.
//guard 조건 else{
//    return || throw
//}

func test() {
    let condition1: Bool = true
    let condition2: Bool = false
    guard condition1, condition2 else { //두 조건이 모두 만족해야 come in, 아닌경우 bye가 출력된다.
        return print("bye")
    }
    print("come in")
}
test()

//유사하게 작성해보면 다음과 같다.
for i in 0...3 {
    if i != 1 { continue }
    print(i)
}

for i in 0...3 {
    guard i == 1 else { continue }
    print(i)
}



//반복문
//swift에서 사용되는 반복문의 종류는, for ~ in 문, while, repeat-while문이 있다.

//for...in문
//for 루프상수 in 순회범위 {}

for i in 1...5{
    print(i) // 1  2 3 4 5
}
//혹은 이미 선언된 배열을 사용할 수 있다.
let arr  = ["A","B","C"]
for i in arr{
    print(i) // A B C
}


//2. while문
//while은 다른 언어와 유사하다.
var number = 5
while number < 10 {
    print(number)
    number+=1 // 5 6 7 8 9
}

//3. repeat while 반복문
//repeat while 반복문또한 do while문과 유사하다.
var x = 3

repeat {
    x+=2
} while x < 5
print(x) //5, 바로 2를 더해주기 때문에 5가 되어 x<5 가 false로 반복이 종료된다.
