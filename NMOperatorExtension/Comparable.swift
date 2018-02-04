//
//  Comparable.swift
//  NMOperatorExtension
//
//  Created by Nicolas Mahé on 28/06/17.
//  Copyright © 2017 Nicolas Mahé. All rights reserved.
//

import UIKit

//----------------------------------------------------------------------------
// MARK: - Inferior
//----------------------------------------------------------------------------

private func compareInferior<T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}
public func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  return compareInferior(lhs: lhs, rhs: rhs)
}
public func < <T : Comparable>(lhs: T?, rhs: T) -> Bool {
  return compareInferior(lhs: lhs, rhs: rhs)
}
public func < <T : Comparable>(lhs: T, rhs: T?) -> Bool {
  return compareInferior(lhs: lhs, rhs: rhs)
}

//----------------------------------------------------------------------------
// MARK: - Superior
//----------------------------------------------------------------------------

private func compareSuperior<T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  case (nil, _?):
    return true
  default:
    return false
  }
}
public func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  return compareSuperior(lhs: lhs, rhs: rhs)
}
public func > <T : Comparable>(lhs: T?, rhs: T) -> Bool {
  return compareSuperior(lhs: lhs, rhs: rhs)
}
public func > <T : Comparable>(lhs: T, rhs: T?) -> Bool {
  return compareSuperior(lhs: lhs, rhs: rhs)
}

//----------------------------------------------------------------------------
// MARK: - Inferior or equal
//----------------------------------------------------------------------------

private func compareInferiorOrEqual<T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l <= r
  default:
    return !(lhs > rhs)
  }
}
public func <= <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  return compareInferiorOrEqual(lhs: lhs, rhs: rhs)
}
public func <= <T : Comparable>(lhs: T?, rhs: T) -> Bool {
  return compareInferiorOrEqual(lhs: lhs, rhs: rhs)
}
public func <= <T : Comparable>(lhs: T, rhs: T?) -> Bool {
  return compareInferiorOrEqual(lhs: lhs, rhs: rhs)
}

//----------------------------------------------------------------------------
// MARK: - Superior or equal
//----------------------------------------------------------------------------

private func compareSuperiorOrEqual<T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l >= r
  default:
    return !(lhs < rhs)
  }
}
public func >= <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  return compareSuperiorOrEqual(lhs: lhs, rhs: rhs)
}
public func >= <T : Comparable>(lhs: T?, rhs: T) -> Bool {
  return compareSuperiorOrEqual(lhs: lhs, rhs: rhs)
}
public func >= <T : Comparable>(lhs: T, rhs: T?) -> Bool {
  return compareSuperiorOrEqual(lhs: lhs, rhs: rhs)
}
