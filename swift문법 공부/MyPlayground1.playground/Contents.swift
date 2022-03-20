import UIKit

// 일반적으로 컴파일 타임이 결정됨.
struct PersonStruct {
    
    let name: String
    var sallery: Int
    
    
    mutating func changeSallery(sallery: Int){
        self.sallery = sallery
    }
    
}
// 일반적으로 run time에 의해 결정됨.
// final을 넣으면 compile time에 의해 결정됨.
class PersonClass{
    let name: String
//    let sallery: Int
    var sallery: Int
    
    init(name: String, sallery: Int){
        self.name = name
        self.sallery = sallery
    }
    
    func changeSallery(sallery: Int){
        self.sallery = sallery
    }
    
}
// struct는 init을 자동으로 생성해줌
// struct: 값 타입(call by value), class는 참조 타입(call by reference)
// 값이 독립적이면 struct 사용, 아니면 class 사용
// 상속을 사용할 때는 혹은 사용할 가능성 있으면 class 사용

var struct1 = PersonStruct(name: "아무개", sallery: 0)
let class1 = PersonClass(name: "아무개", sallery: 0)

class1.sallery = 100
struct1.sallery = 100

//class는 상속이 됨
