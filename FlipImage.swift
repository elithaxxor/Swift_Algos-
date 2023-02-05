//
//  FlipImage.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/4/23.
//

// 832. Flipping an Image
// Given an n x n binary matrix image, flip the image horizontally, then invert it, and return the resulting image. To flip an image horizontally means that each row of the image is reversed.
//For example, flipping [1,1,0] horizontally results in [0,1,1].



import Foundation



func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
    if image.count == 0 {
        return []
    }
    var image = image
    image = invert(&image)
    image = flip(&image)
    return image
}

// 'flip' or reverse array
func flip (_ image: inout [[Int]]) -> [[Int]] {
    for i in 0..<image.count {
        var p1 = 0
        var p2 = image[i].count - 1
        
        while p1 < p2 {
            let temp = image[p1][p2]
            image[p1][p2] = image[p2][p1]
            image[p2][p1] = temp
            p1 += 1
            p2 -= 1
        }
    }
    return image
}
// changes matrix 0's to 1's and 1's to 0's
func invert (_ image: inout [[Int]]) -> [[Int]] {
    for i in 0..<image.count {
        for j in 0..<image.count {
            if image[i][j] == 1 { image[i][j] = 0  } // start inversion logic
            else if image[i][j] == 0 { image[i][j] = 1  }
        }
    }
    return image
}

var image = [[1,1,0],[1,0,1],[0,0,0]]
var res = flipAndInvertImage(image)
print(res)




