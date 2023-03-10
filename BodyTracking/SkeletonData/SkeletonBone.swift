//
//  SkeletonJoint.swift
//  BodyTracking
//
//  Created by Yusril on 06/03/23.
//

import Foundation
import RealityKit
import ARKit

struct SkeletonBone {
    var fromJoint: SkeletonJoint
    var toJoint: SkeletonJoint
    
    var centerPos: SIMD3<Float> {
        [(fromJoint.position.x + toJoint.position.x)/2,
         (fromJoint.position.y + toJoint.position.y)/2,
         (fromJoint.position.z + toJoint.position.z)/2]
    }
    
    var length: Float {
        simd_distance(fromJoint.position, toJoint.position)
    }
}
