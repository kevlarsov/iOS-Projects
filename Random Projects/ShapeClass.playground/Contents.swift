class Shape {
    var color = "Red"
    
    func getArea() {
        
    }
}

class Rectangle: Shape {
    var height = 0
    var width = 0
}

class Triangle: Shape {
    var base = 0
    var height = 0
}

class Circle: Shape {
    var radius = 0
}

let r1 = Rectangle()
r1.color = "Red"
r1.height = 15
r1.width = 12

let t1 = Triangle()
t1.color = "Red"
t1.base = 10
t1.height = 5

let c1 = Circle()
c1.color = "Red"
c1.radius = 5
