//
//  SizesModifier.swift
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
//BasicSizes Modifier
////////////////////////////////////////////////////////////////////////////////////////////////
private protocol BasicSizesPlus{
  static func width(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
}

private protocol BasicSizesMinus{
  static func width(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
}

private protocol BasicSizesEquals{
  static func width(_ view: View, equals: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, equals: CGFloat) -> NSLayoutConstraint?
}

private protocol BasicSizesMultiply{
  static func width(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
}

private protocol BasicSizesDevide{
  static func width(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
}

extension CartographyKit: BasicSizesPlus{
  @discardableResult
  public static func width(_ view: View, plus: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width + plus
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View, plus: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height + plus
      return
    }
    return c
  }
}

extension CartographyKit: BasicSizesMinus{
  @discardableResult
  public static func width(_ view: View, minus: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width - minus
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View, minus: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height - minus
      return
    }
    return c
  }
}

extension CartographyKit: BasicSizesEquals{
  @discardableResult
  public static func width(_ view: View, equals: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == equals
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View, equals: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == equals
      return
    }
    return c
  }
}

extension CartographyKit: BasicSizesMultiply{
  @discardableResult
  public static func width(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width * multipliedBy
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height * multipliedBy
      return
    }
    return c
  }
}

extension CartographyKit: BasicSizesDevide{
  @discardableResult
  public static func width(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / dividedBy
      return
    }
    return c
  }
  
  @discardableResult
  public static func height(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint? {
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height / dividedBy
      return
    }
    return c
  }
}
