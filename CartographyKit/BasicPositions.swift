//
//  BasicPositions.swift
//  CartographyKit iOS
//
//  Created by Michael Helmbrecht on 06/01/2018.
//

#if os(iOS) || os(tvOS)
  import UIKit
#else
  import AppKit
  #endif
import Cartography

//Positions
private protocol BasicPositions{
  //
  static func top(_ view: View) -> NSLayoutConstraint?
  static func bottom(_ view: View) -> NSLayoutConstraint?
  static func left(_ view: View) -> NSLayoutConstraint?
  static func right(_ view: View) -> NSLayoutConstraint?
  //
  static func leading(_ view: View) -> NSLayoutConstraint?
  static func trailing(_ view: View) -> NSLayoutConstraint?
  //
  static func center(_ view: View) -> [NSLayoutConstraint?]
  static func centerX(_ view: View) -> NSLayoutConstraint?
  static func centerY(_ view: View) -> NSLayoutConstraint?
  //
  #if os(iOS)
  static func topMargin(_ view: View) -> NSLayoutConstraint?
  static func bottomMargin(_ view: View) -> NSLayoutConstraint?
  static func leftMargin(_ view: View) -> NSLayoutConstraint?
  static func rightMargin(_ view: View) -> NSLayoutConstraint?
  //
  static func leadingMargin(_ view: View) -> NSLayoutConstraint?
  static func trailingMargin(_ view: View) -> NSLayoutConstraint?
  //
  static func centerWithinMargins(_ view: View) -> [NSLayoutConstraint?]
  static func centerXWithinMargins(_ view: View) -> NSLayoutConstraint?
  static func centerYWithinMargins(_ view: View) -> NSLayoutConstraint?
  #endif
}

extension CartographyKit: BasicPositions{
  
  @discardableResult
  public static func top(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top
      return
    }
    return c
  }
  
  @discardableResult
  public static func bottom(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom
      return
    }
    return c
  }
  
  @discardableResult
  public static func left(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left
      return
    }
    return c
  }
  
  @discardableResult
  public static func right(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right
      return
    }
    return c
  }
  //
  @discardableResult
  public static func leading(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leading == view.superview!.leading
      return
    }
    return c
  }
  
  @discardableResult
  public static func trailing(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailing == view.superview!.trailing
      return
    }
    return c
  }
  //
  @discardableResult
  public static func center(_ view: View) -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.center == view.superview!.center
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerX(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerY(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY
      return
    }
    return c
  }
  //
  #if os(iOS)
  @discardableResult
  public static func topMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.topMargin == view.superview!.topMargin
      return
    }
    return c
  }
  
  @discardableResult
  public static func bottomMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottomMargin == view.superview!.bottomMargin
      return
    }
    return c
  }
  
  @discardableResult
  public static func leftMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leftMargin == view.superview!.leftMargin
      return
    }
    return c
  }
  
  @discardableResult
  public static func rightMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.rightMargin == view.superview!.rightMargin
      return
    }
    return c
  }
  //
  @discardableResult
  public static func leadingMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leadingMargin == view.superview!.leadingMargin
      return
    }
    return c
  }
  
  @discardableResult
  public static func trailingMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailingMargin == view.superview!.trailingMargin
      return
    }
    return c
  }
  //
  @discardableResult
  public static func centerWithinMargins(_ view: View) -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.centerWithinMargins == view.superview!.centerWithinMargins
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerXWithinMargins(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerXWithinMargins == view.superview!.centerXWithinMargins
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerYWithinMargins(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerYWithinMargins == view.superview!.centerYWithinMargins
      return
    }
    return c
  }
  #endif
}


