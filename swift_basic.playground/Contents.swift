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


//옵셔널
//선택적인 값, 값이 있을수도 있고 없을수도 있음


var name: String? = nil //swift에서 null은 nuil이라고 사용
print(name)

//옵셔널값과 확정된 타입은 다르다. 만약 일반 타입 변수와 결합/연산 하려면 옵셔널 바인딩이 필요하다.
//var optionalValue: String? = "potato"
//var newValue: String = optionalValue

//옵셔널 바인딩
// : 옵셔널 값을 안전하게 처리하는 방법.
var numInt: Int? = 3

//강제 옵셔널 해제
//이렇게 강제로 해제할 수 있다. 그러나 nil값에 !를 사용하면 에러가 발생하여 위험하다
print(numInt) //  Optional(3)
print(numInt!) //  3
//print(name!) //  Fatal error: Unexpectedly found nil while unwrapping an Optional value



//비강제 옵셔널 바인딩
if let result = numInt{
    //numInt가 nil이 아닌 걍으
    print(result)
}else{
    //numInt가 nil일 경우
    print("is nil.." )
}

//+ 이건 안된다.if를 사용할 때는 조건문이 Boolean 타입이여야함.
// 대신, numInt !=nil 사용가능
//if numInt{
//    //numInt가 nil이 아닌 걍으
//    print(result)
//}else{
//    //numInt가 nil일 경우
//    print("is nil.." )
//}




//func checkNumber() {
//    var numInt: Int? = 3
//
//    guard let unwrappedNum = numInt else {
//        print("is nil..")
//        return
//    }
//
//    print("Value is \(unwrappedNum)") // 출력: Value is 3
//}
//checkNumber() //Value is 3\n"
//+ 이건 안된다. guard를 사용할 때는 조건문이 Boolean 타입이여야함. / 대신, numInt !=nil 사용가능
//guard unwrappedNum  else {
//    print("is nil..")
//    return  ...
//}

//guard let vs guard
//guard let은 옵셔널 바인딩을 위해  옵셔널 값을 안전하게 언래핑할 때 사용. nil인 경우 즉시 종료, 값이 있다면 언래핑하여 사용하도록 함.
//guard은 불린 타입의 일반 조건 검사를 위해 사용.

// guard let vs if let
//if를 사용하여 옵셔널 바인딩을 하면 옵셔널이 추출된 변수를 if블록 안에서만 사용
//guard문을 사용하면 guard문 다음 함수 전체 구문에서 옵셔널이 추출된 변수나 상수를 사용할 수 있다.

//이렇게 guard let에 할당된 변수를 함수내 스코프에서 사용할 수 있따.
func processNumber(number: Int?) {
    guard let unwrappedNumber = number else {
        print("Number is nil")
        return
    }
    
    guard unwrappedNumber > 0 else {
        print("Number must be greater than 0")
        return
    }
    
    print("Processing number: \(unwrappedNumber)")
}

//묵시적 옵셔널 해제
// 비교연산자를 사용

let optionalInt: Int? = 6
if optionalInt == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}
// ("value가 6입니다.")

//묵시적 옵셔널 타입 : ! 사용하여 옵셔널 타입 지정
//nil일 가능성은 있지만, 코드 실행 중 특정 시점에서는 반드시 값이 있다고 보장할 수 있는 변수나 상수에 사용.
// var variable : Type! : 타입 뒤 !를 붙여서 선언.
let num12 = "12"
var optionalInt2: Int! = Int(num12)
// 기존에 배웠던 옵셔널은 ? 이다. 하지만 !를 사용하면 묵시적 옵셔널 타입이 된다.
print(optionalInt2 + 1) //13

//단,묵시적 옵셔널 타입의 변수가 nil값인 경우 Fatal오류 발생
var optionalInt3: Int! =  nil
//print(optionalInt3 + 1) //Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value

//!!! 일반적으로 안전성을 높이기 위해 옵셔널 바인딩이나 기본값 제공을 사용하는 것이 좋다.


//Struct(구조체)
/*
 struct 구조체 이름 {
     프로퍼티와 메서드
 }
 
*/

struct User {
    var nickname: String
    var age: Int
    func sayHi(){
        print("hello I'm \(nickname)")
    }
    //초기화 생성자는 init 이다.(constructor와 유사)
    //초기화 생성자 내부에서 인스턴스 프로퍼티를 모두 초기화 해주어야한다.
    init(nickname :String, age: Int){
        print("init!")
        self.nickname = nickname
        self.age = age
    }
}

var user = User(nickname: "sarah!!", age: 13)
user.sayHi() //hello I'm sarah!!

//구조체에 선언된 프로퍼티는 모두 초기화가 필요하다.
//var user2 = User(nickname: "Sarah")  //Missing argument for parameter 'age' in call


//Class(클래스)
//클래스를 정의하고 사용하는 방법은 구조체와 매우 비슷하다.

class Dog {
    var name: String = ""
    var age: Int = 0
    func sayHi(){
        print("Mung!  I'm \(name)")
    }
    //class는 구조체와 달리 모든 프로퍼티를 초기화해주지 않아도 된다.
    init(nickname :String){
        print("init!")
        self.name = nickname
    }

}
//단, 클래스는 구조체와 달리 생성자함수 호출 시 프로퍼티 선언이 필요없다. 같이 선언도 가능하다.
var dog = Dog(nickname: "happy" )
dog.sayHi() //Mung!  I'm

//Class vs Struct 중 다른 언어와 다른 차이점으로 mutating 키워드의 사용이 있다.
//mutating 키워드는 구조체에서 속성을 변경하거나 self를 변경하는 메서드에 붙여 사용한다.


struct Counter {
    var count: Int = 0
    //이렇게 값타입인 구조체 내부에서 속성을 변경하는 경우 mutating 키워드가 필요하다.
    mutating func increment() {
        count += 1
    }
    //mutating 키워드를 붙이지 않고 인스턴스 변경은 에러가 발생한다.
     func decrement() {
        //count -= 1 //Left side of mutating operator isn't mutable: 'self' is immutable
    }
    //이렇게 self 키워드로 새로운 인스턴스를 할당하는 경우도 mutating키워드를 사용한다.
    mutating func newCounter(){
        self = Counter(count : 10)
    }
}
//반연 클래스는 인스턴스 변경에서 자유롭다.
class CounterClass {
    var count: Int = 0

    func increment() {
        count += 1
    }
}

//deinit : 소멸자
//소멸자는 클래스 인스턴스가 메모리에서 해제되기 전에 호출되는 특별한 메서드. 클래스에서만 사용 가능하다
//소멸자는 매개변수를 받을 수 없고 반환 값도 없다.
//Swfit는 특정 클래스 인스턴스가 더 이상 필요 없어질 때 자동적으로 메모리를 해제한다. 메모리 공간을 확보하기 위해서다. Swift는 이러한 메모리 관리를 ARC(Automatic Reference Counting)이라는 방법으로 수행한다. 즉 수동으로 정리할 필요가 없다.
// 그러나 때로 수동 해제가 필요할 경우 deinit 호출을 통해 메모리 ㅐ제가 가능하다.
class UserClass {
    var nickname: String
    var age: Int
    
    // init을 활용하여 프로퍼티의 값을 초기화 시켜주자.
    init(nickname: String, age: Int) {
        self.nickname = nickname
        self.age = age
    }
    
    init(age: Int) {
        self.nickname = "albert"
        self.age = age
    }
    
    deinit{
        //원하는 정리작업 구현
        print("deinit user")
    }
}
var user2:UserClass? = UserClass(age: 13)
user2 = nil //deinit user
 
//프로퍼티 변경하기
let user3 = UserClass(age:15)
user3.age = 20 //class는 인스턴스가 상수로 선언되어도 프로퍼티 수정이 가능하다.
let user2Instance = User(nickname: "harry", age:15)
//user2Instance.age = 100 // 구조체는 값이므로 상수 선언시 프로퍼티 수정이 불가하다. Cannot assign to property: 'user2Instance' is a 'let' constant


//연산 프로퍼티
//기본 프로퍼티가 저장 프로퍼티라면,  getter 와 setter를 사용하여 다른 프로퍼티의 값들에 간접적으로 접근하는 프로퍼티를 연산 프로퍼티라고한다
// get, set 메서드와 유사하다.
struct Stock {
    var averagePrice: Int
    var quantity: Int
    
    // purchasePrice가 연산 프로퍼티
    var purchasePrice: Int {
        get {
            return averagePrice * quantity
        }
        
        set(newPrice) {
            averagePrice = newPrice / quantity
        }
    }
}
var stock = Stock(averagePrice:2 , quantity: 14)
print(stock.purchasePrice) //28, get 메서드가 호출된다.
stock.purchasePrice = 100 //set 메서드가 호출된다.
print(stock.purchasePrice) //98, get 메서드가 호출된다.

 
//타입 프로퍼티
//: 인스턴스의 프로퍼티가 아닌, 클래스/구조체 자체의 프로퍼티, 즉 static 프로퍼티 선언이 가능하다.
struct SomeStructure {
    static var storedTypeProperty = "Some value." //스토어
    static var computedTypeProperty: Int {
        return 1
    }
}
print(SomeStructure.storedTypeProperty) //Some value.
SomeStructure.storedTypeProperty = "hello 2025"
print(SomeStructure.storedTypeProperty) //hello 2025
