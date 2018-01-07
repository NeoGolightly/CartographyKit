//
//  Squares.swift
//  CartographyKit iOS
//
//  Created by Michael Helmbrecht on 07/01/2018.
//

#if os(iOS) || os(tvOS)
  import UIKit
#else
  import AppKit
#endif
import Cartography

////////////////////////////////////////////////////////////////////////////////////////////////
//Squares
////////////////////////////////////////////////////////////////////////////////////////////////

private protocol Squares{
  
  static func squareEqualsWidth(_ view: View) -> [NSLayoutConstraint?]
  static func squareEqualsHeight(_ view: View) -> [NSLayoutConstraint?]
  static func squareEqualsWidth(_ view: View, dividedBy: CGFloat) -> [NSLayoutConstraint?]
  static func squareEqualsWidth(_ view: View, minus: CGFloat) -> [NSLayoutConstraint?]
  static func squareEqualsWidth(_ view: View, multipliedBy: CGFloat) -> [NSLayoutConstraint?]
  static func squareEqualsHeight(_ view: View, dividedBy: CGFloat) -> [NSLayoutConstraint?]
  static func squareEqualsHeight(_ view: View, multipliedBy: CGFloat) -> [NSLayoutConstraint?]
  static func square(_ view: View, equals: CGFloat) -> [NSLayoutConstraint?]
}

extension CartographyKit: Squares{
  @discardableResult
  public static func squareEqualsWidth(_ view: View) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width
      d = view.height == view.superview!.width
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsHeight(_ view: View) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.height
      d = view.height == view.superview!.height
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsWidth(_ view: View, dividedBy: CGFloat) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / dividedBy
      d = view.height == view.superview!.width / dividedBy
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsWidth(_ view: View, minus: CGFloat) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width - minus
      d = view.height == view.superview!.width - minus
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsWidth(_ view: View, multipliedBy: CGFloat) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width * multipliedBy
      d = view.height == view.superview!.width * multipliedBy
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsHeight(_ view: View, dividedBy: CGFloat) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.height / dividedBy
      d = view.height == view.superview!.height / dividedBy
    }
    return [c, d]
  }
  
  @discardableResult
  public static func squareEqualsHeight(_ view: View, multipliedBy: CGFloat) -> [NSLayoutConstraint?] {
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.height * multipliedBy
      d = view.height == view.superview!.height * multipliedBy
    }
    return [c, d]
  }
  
  @discardableResult
  public static func square(_ view: View, equals: CGFloat) -> [NSLayoutConstraint?]{
    var c: NSLayoutConstraint?
    var d: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == equals
      d = view.height == equals
    }
    return [c, d]
  }
  
}
