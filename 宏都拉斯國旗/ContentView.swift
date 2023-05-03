import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        // 藍色底圖
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 400, y: 0))
        path.addLine(to: CGPoint(x: 400, y: 200))
        path.addLine(to: CGPoint(x: 0, y: 200))
        
        let backgroundLayer = CAShapeLayer()
        backgroundLayer.fillColor = CGColor(red: 155/255, green:222/255, blue: 241/255, alpha: 1)
        backgroundLayer.path = path.cgPath
        view.layer.addSublayer(backgroundLayer)
        //白色底圖
        let white = UIBezierPath()
        white.move(to: CGPoint(x: 0, y: 66.6))
        white.addLine(to: CGPoint(x: 0, y: 133.2))
        white.addLine(to: CGPoint(x: 400, y: 133.2))
        white.addLine(to: CGPoint(x: 400, y:66.6))
        let whiteLayer = CAShapeLayer()
        whiteLayer.fillColor = CGColor(red: 1, green:1, blue: 1, alpha: 1)
        whiteLayer.path = white.cgPath
        view.layer.addSublayer(whiteLayer)
        //星星
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 144.5, y: 71.4))
        starPath.addLine(to: CGPoint(x: 147.5, y: 78.1))
        starPath.addLine(to: CGPoint(x: 154.7, y: 78.5))
        starPath.addLine(to: CGPoint(x: 148.8, y: 83.2))
        starPath.addLine(to: CGPoint(x: 151.2, y: 90.5))
        starPath.addLine(to: CGPoint(x: 144.6, y: 86.2))
        starPath.addLine(to: CGPoint(x: 138.4, y: 90.5))
        starPath.addLine(to: CGPoint(x: 140.7, y: 83.1))
        starPath.addLine(to: CGPoint(x: 134.3, y: 78.3))
        starPath.addLine(to: CGPoint(x: 141.8, y: 78.2))
        
        let starPathLayer = CAShapeLayer()
        starPathLayer.fillColor = CGColor(red: 155/255, green: 222/255, blue: 241/255   , alpha:1   )
        starPathLayer.path = starPath.cgPath
        view.layer.addSublayer(starPathLayer)
       //star1
        let starPathLayer1 = CAShapeLayer()
        starPathLayer1.path = starPath.cgPath
        starPathLayer1.position = CGPoint(x:110, y: 0)
        starPathLayer1.fillColor = CGColor(red: 155/255, green: 222/255, blue: 241/255, alpha: 1)
        view.layer.addSublayer(starPathLayer1)
        //star2
        let starPathLayer2 = CAShapeLayer()
        starPathLayer2.path = starPath.cgPath
        starPathLayer2.position = CGPoint(x: 55, y: 17)
        starPathLayer2.fillColor = CGColor(red: 155/255, green: 222/255, blue: 241/255, alpha: 1)
        view.layer.addSublayer(starPathLayer2)
        //star3
        let starPathLayer3 = CAShapeLayer()
        starPathLayer3.path = starPath.cgPath
        starPathLayer3.position = CGPoint(x:0, y: 33)
        starPathLayer3.fillColor = CGColor(red: 155/255, green: 222/255, blue: 241/255, alpha: 1)
        view.layer.addSublayer(starPathLayer3)
        //star4
        let starPathLayer4 = CAShapeLayer()
        starPathLayer4.path = starPath.cgPath
        starPathLayer4.position = CGPoint(x:110, y: 33)
        starPathLayer4.fillColor = CGColor(red: 155/255, green: 222/255, blue: 241/255, alpha: 1)
        view.layer.addSublayer(starPathLayer4)

        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

