//
//  Sizes.swift
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

//Sizes
private protocol BasicSizes{
  static func width(_ view: View) -> NSLayoutConstraint?
  static func height(_ view: View) -> NSLayoutConstraint?
  static func size(_ view: View) -> [NSLayoutConstraint?]
}


extension CartographyKit: BasicSizes{
  @discardableResult
  public static func width(_ view: View) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height
      return
    }
    return c
  }
  
  @discardableResult
  public static func size(_ view: View) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.size == view.superview!.size
      return
    }
    return c
  }
}
