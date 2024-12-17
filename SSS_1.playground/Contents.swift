import UIKit

//var say = "Hello, pladyground" //변수 선언
//say = "Hello iOS"
//
//let alzio = "test" //상수
//var addWord = alzio + "   " + say
//
//let num1 = 10
//let num2 = 34
//let sum = num1 + num2

//타입을 정의하기, 일반적으로는 추론됨.
//var a:String = "32"
//var b:Int = 32

//var a = 1, b = 3 // 현속 할당 시 키워드는 한번만 선언가능.

print("TEST!") //console에 출력됨.

//UInt : 일반 숫자가 아님, 음수 할당 불가
//var c:UInt = -10

var flag = true
var flagb = false
//
print("azi 200 ?? -> \(flag)")
var a = "SINCE 2003" , b = "10M"
print("출생 \(a)  \(b)") //역슬래쉬를 이용

var day = 2023 , unit = "YEAR"
//print(day + unit) 형이 다르면 연산 불가
print(String(day) + unit) //형변환하면 가능


var valueF:Float = 11111111111.1 //float 타입은 32bit > 1.111111E+10
var valueD:Double = 11111111111.1 //float 타입은 32bit >  11,111,111,111.1

let 한글:Character = "가" //한글 변수명 가능
print(한글)
/* String vs Character
 String : 문자의 집합을 의미 ,Character : 문자 하나를 의미, 문장을 저장할 수 없음
*/
let str = ("tester", "IT" , 3, 10000000000) //라벨이 없는 튜플 타입
print(str)//"("tester", "IT", 3, 10000000000)\n"
let str2 = (a:123, b:455) //라벨이 있는 튜플, (라벨:값)의 형태로 사용
print(str2.a)//

/* 논리 연산
 ! NOT ,  && AND , || OR
*/

/* 범위 연산자 */
//5부터 9까지 반복
for _ in 5..<9 {
    print("!")
}
for i in 5..<9 {
    print("!",i)
}

/* switch문 - swift의 범위는 복수지정간으 */
//튜플의 switch문은 각 요소들의 값이 일치하거나 범위내에 포함되어야함.
let d = (1,3)
switch d
{
case(1,3):
    print("1번")
    fallthrough //다른 언어와 달리, fallthrough를 넣어야 아래까지 실행됨. 기본이 break
case(1...5, 1...4):
    print("2번") //해당
default:
    print("NO")
}

//for i in [99, 10, 3 , 1]{
//    print(i , terminator: ",") //99,10,3,1,8
//}
//print()
//let arr  = [1,3,4]
//for i in arr{
//    print(i , terminator: ",") // 1,3,4,
//}
//print()
//for a in 1...2{
//    for b in 1...2{
//        let sum = (a * 3 + b * 5)
//        print(sum, terminator: " > ") //8 > 13 > 11 > 16 >
//    }
//}

//stride
//for a in stride(from :5, to: 30 , by:5){
//    print(a) //10  15   20   25
//}

//let txt = "iOS 공부하기"
//for dd in txt{
//    print(dd, terminator: " ") //i O S   공 부 하 기
//}

//함수 정의
//func 함수명(매개변수:매개변수타입)->반환타입{...}

//함수 선언시 매개변수에 라벨을 사용하면 호출시에도 라벨 명시가 필요
func add(a:Int, b:Int)->Int{
    return a + b
}
print(add(a:3,b:4))
//만약 호출 시 라벨지정을 안하려면, 매개변수 정의 시 _ 를 사용
func add2(_ a:Int, _ b:Int)->Int{
    return a + b
}
print(add2(13,4))
