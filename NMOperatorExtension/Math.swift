//
//  Math.swift
//  Pods
//
//  Created by Nicolas Mahé on 28/06/2017.
//
//

import UIKit

//----------------------------------------------------------------------------
// MARK: - Int
//----------------------------------------------------------------------------

public func +(lhs: Int?, rhs: Int?) -> Int {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l + r
  case let (l?, nil):
    return l
  case let (nil, r?):
    return r
  default:
    return 0
  }
}

public func -(lhs: Int?, rhs: Int?) -> Int {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l - r
  case let (l?, nil):
    return l
  case let (nil, r?):
    return -r
  default:
    return 0
  }
}

public func *(lhs: Int?, rhs: Int?) -> Int {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l * r
  default:
    return 0
  }
}

public func /(lhs: Int?, rhs: Int?) -> Int {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l / r
  default:
    return 0
  }
}

public func +=(lhs: inout Int?, rhs: Int?) {
  lhs = lhs + rhs
}

public func -=(lhs: inout Int?, rhs: Int?) {
  lhs = lhs - rhs
}

public func *=(lhs: inout Int?, rhs: Int?) {
  lhs = lhs * rhs
}

public func /=(lhs: inout Int?, rhs: Int?) {
  lhs = lhs / rhs
}

//----------------------------------------------------------------------------
// MARK: - Float
//----------------------------------------------------------------------------

public func +(lhs: Float?, rhs: Float?) -> Float {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l + r
  case let (l?, nil):
    return l
  case let (nil, r?):
    return r
  default:
    return 0
  }
}

public func -(lhs: Float?, rhs: Float?) -> Float {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l + r
  case let (l?, nil):
    return l
  case let (nil, r?):
    return -r
  default:
    return 0
  }
}

public func *(lhs: Float?, rhs: Float?) -> Float {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l * r
  default:
    return 0
  }
}

public func /(lhs: Float?, rhs: Float?) -> Float {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l / r
  default:
    return 0
  }
}

public func +=(lhs: inout Float?, rhs: Float?) {
  lhs = lhs + rhs
}

public func -=(lhs: inout Float?, rhs: Float?) {
  lhs = lhs - rhs
}

public func *=(lhs: inout Float?, rhs: Float?) {
  lhs = lhs * rhs
}

public func /=(lhs: inout Float?, rhs: Float?) {
  lhs = lhs / rhs
}
