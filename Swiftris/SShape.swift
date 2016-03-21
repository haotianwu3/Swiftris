//
//  SShape.swift
//  Swiftris
//
//  Created by Randolph on 19/3/2016.
//  Copyright © 2016年 September. All rights reserved.
//

class SShape: Shape {
    override var blockRowColumnPositions:[Orientation: Array<(columnDiff:Int, rowDiff: Int)>]{
        return [
            Orientation.Zero: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.Ninety: [(2,0), (1,0), (1,1), (0,1)],
            Orientation.OneEighty: [(0,0), (0,1), (1,1), (1,2)],
            Orientation.TwoSeventy: [(2,0), (1,0), (1,1), (0,1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>]{
        return[
            Orientation.Zero:[blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:[blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:[blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy:[blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}