//
//  Array2D.swift
//  Swiftris
//
//  Created by Randolph on 18/3/2016.
//  Copyright © 2016年 September. All rights reserved.
//

class Array2D<T>{
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T?{
        get{
            return array[(row * columns) + column]
        }
        set(newValue){
            array[(row * columns) + column] = newValue
        }
    }
    
}
