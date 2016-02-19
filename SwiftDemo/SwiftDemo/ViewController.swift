//
//  ViewController.swift
//  SwiftDemo
//
//  Created by huangjin on 16/2/19.
//  Copyright © 2016年 huangjin. All rights reserved.
//



//study网址
// http://wiki.jikexueyuan.com/project/swift/chapter1/02_a_swift_tour.html
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// var let(常量)
        var a=14
           a=45//声明变量  自动推断类型，不需要指定确定的类型
        var b: Double=45//申明变量，当初始值没有提供确切的信息后需要在变量后面申明类型
         b=15;
        print(a,b);
        /**
        显式转换类型
        */
        let label="The width is";
        let width=94;
        let witgLabel=label+String(width);
        print(witgLabel);
        
        /**
        \() 把值转换成字符串更简洁的办法
        */
        
        let apples=3;
        let appleSummary="I have \(apples) apples"
        print(appleSummary);
        
        /**
        数组和字典
        */
        
        var shoppingList=["catfish","water","tylips","blue paint"];
        shoppingList[1]="bottle of water"
        var occupations=[
            "Malcolm" :"captain",
            "kaylee"  : "Mechanic",
        ]
        occupations["Jayne"]="public Relations";
        //创建空数组或者字典，使用初始化语法
        let emptyArray=[String]();
        let emptyDictionary=[String:Float]();
        //如果未提供确切的信息可以使用下列方法初始化
        shoppingList=[];
        occupations=[:];
        
        /**
        控制流
        */
        
        let individualSource=[75,111,88,990];
        var teamSource=0;
        for score in individualSource
        {
            if(score>50)
            {
                teamSource+=3;
                
            }else
            {
                teamSource+=1;
            }
        
        }
        print(teamSource);
        
          // repeat-while 和 do -while 是基本相同的
        
        
//        switch 语句与Objective-c的区别
//        与 C 语言和 Objective-C 中的switch语句不同，在 Swift 中，当匹配的 case 分支中的代码执行完毕后，程序会终止switch语句，而不会继续执行下一个 case 分支。这也就是说，不需要在 case 分支中显式地使用break语句。这使得switch语句更安全、更易用，也避免了因忘记写break语句而产生的错误。(你也可以在swift中使用break提出程序的循环)
//    
        let vegetable="red pepper";
        switch vegetable {
            
        case "celery":print("Add some raisins and make ants on a log.");
        case "cucumber","watercress":print("that would mmake a good tea sandwich");
//           case let x wh
        default:print("switch-default");

               }
        
        
        //循环中使用..<来表示范围，也可以使用传统的写法，两者是等价的
        // 使用..<创建的范围不包含上界，如果想包含的话需要使用...
        for i in 0..<10{
            
            if i>=10{
                print("最大数: \(i)");
            }
        }
        
        for i in 0...10 {
            
            if i>=10{
            
                print("最大数: \(i)");
            }
            
        }
        
        /**
        函数和闭包
    
        */
        
        //使用func 来申明一个函数，使用名字和参数调用参数。 使用->来指定函数的返回类型
        
        func greet(name:String,day:String)->String
        {
        
       return "hello \(name),today is \(day).";
       
       }
        let data = greet("Bob", day: "TuesDay");
        
        print(data);
        
        
        //使用元组来让一个函数返回多个值。该元组的元素可以由数字和名称构成
        
        func caculateStatics(scores:[Int])->(min:Int,max:Int,sum:Int) {
            var min = scores[0];
            var max=scores[0];
            var sum = 0;
            for score in scores {
            
                if score > max
                {
                    max=score;
                }else if score < min {
               
                    min=score;
                }
                sum += score;
                
                
            }
            return(min,max,sum);
        
        }
        
        
        //调用方法： 
        let statistics = caculateStatics([1,2,4,44,89]);
        print(statistics.sum);
        print(statistics.1);
        
        //可变参数的函数申明
        
        func sumOf(numbers:Int ...)->Int{
            var sum=0;
            for number in numbers
            {
                sum+=number;
            
            }
            
            return sum;
        }
        print("数字总和 \(sumOf())");
        print("数字总和 \(sumOf(1,2,3))");
        //函数可以嵌套
        
        func returnFifften()->Int{
        
            var number=10;
            func add() {
                number += 5;
            }
            add();
            return number;
        }
        
        print("returnFifften: \(returnFifften())");
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

