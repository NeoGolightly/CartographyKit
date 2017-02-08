//
//  LayoutContraint.swift
//  FastTap
//
//  Created by mhelmbre on 4/1/15.
//  Copyright (c) 2015 At-World. All rights reserved.
//

#if os(iOS) || os(tvOS)
  import UIKit
  public typealias View = UIView
#else
  import AppKit
  public typealias View = NSView
#endif
import Cartography

private protocol LayoutConstrainBasic{
  static func top(_ view: View) -> NSLayoutConstraint?
  static func bottom(_ view: View) -> NSLayoutConstraint?
  static func width(_ view: View) -> NSLayoutConstraint?
  static func height(_ view: View) -> NSLayoutConstraint?
  static func right(_ view: View) -> NSLayoutConstraint?
  static func left(_ view: View) -> NSLayoutConstraint?
  static func leading(_ view: View) -> NSLayoutConstraint?
  static func trailing(_ view: View) -> NSLayoutConstraint?
  static func center(_ view: View) -> [NSLayoutConstraint?]
  static func centerX(_ view: View) -> NSLayoutConstraint?
  static func centerY(_ view: View) -> NSLayoutConstraint?
  #if os(iOS)
  static func leftMargin(_ view: View) -> NSLayoutConstraint?
  static func rightMargin(_ view: View) -> NSLayoutConstraint?
  static func topMargin(_ view: View) -> NSLayoutConstraint?
  static func bottomMargin(_ view: View) -> NSLayoutConstraint?
  static func leadingMargin(_ view: View) -> NSLayoutConstraint?
  static func trailingMargin(_ view: View) -> NSLayoutConstraint?
  #endif
  static func edges(_ view: View) -> [NSLayoutConstraint?]
}

private protocol LayoutConstrainDevide{
  static func height(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerX(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainPlus{
  static func top(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func left(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func right(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainMinus{
  static func bottom(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func left(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func right(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainMultiply{
  static func height(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func width(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerX(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  
}

private protocol LayoutConstrainEquals{
  static func width(_ view: View, equals: CGFloat) -> NSLayoutConstraint?
  static func height(_ view: View, equals: CGFloat) -> NSLayoutConstraint?
}

private protocol LayoutConstrainToOtherView{
  static func topToOtherViewsBottom(_ view1: View, otherView: View, plus: CGFloat)
  static func bottomToOtherViewsTop(_ view1: View, otherView: View, minus: CGFloat)
}

private protocol LayoutConstrainEdges{
  static func edges(_ view: View, plus: CGFloat)
  static func edges(_ view: View, minus: CGFloat)
  #if os(iOS)
  static func edges(_ view: View, insets: UIEdgeInsets)
  #endif
}

public struct CartographyKit{
  
}


///Normal Constraints
extension CartographyKit: LayoutConstrainBasic{
  
  public static func top(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top
      return
    }
    return c
  }
  
  public static func bottom(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom
      return
    }
    return c
  }
  
  
  public static func width(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width
      return
    }
    return c
  }
  
  public static func height(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height
      return
    }
    return c
  }
  
  public static func right(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right
      return
    }
    return c
  }
  
  public static func left(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left
      return
    }
    return c
  }
  
  public static func leading(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leading == view.superview!.leading
      return
    }
    return c
  }
  
  public static func trailing(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailing == view.superview!.trailing
      return
    }
    return c
  }
  
  public static func center(_ view: View) -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.center == view.superview!.center
      return
    }
    return c
  }
  
  public static func centerX(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX
      return
    }
    return c
  }
  
  public static func centerY(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY
      return
    }
    return c
  }
  #if os(iOS)
  public static func leftMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leftMargin == view.superview!.leftMargin
      return
    }
    return c
  }
  
  public static func rightMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.rightMargin == view.superview!.rightMargin
      return
    }
    return c
  }
  
  public static func topMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.topMargin == view.superview!.topMargin
      return
    }
    return c
  }
  
  public static func bottomMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottomMargin == view.superview!.bottomMargin
      return
    }
    return c
  }
  @available(OSX 10.9, *)
  public static func leadingMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leadingMargin == view.superview!.leadingMargin
      return
    }
    return c
  }
  @available(OSX 10.9, *)
  public static func trailingMargin(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailingMargin == view.superview!.trailingMargin
      return
    }
    return c
  }
  #endif
  
  public static func edges(_ view: View)  -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?] = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges
      return
    }
    return c
  }
}

//MARK: - Divided and Multiplied Minus Plus
public extension CartographyKit{
  
  public static func top(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top +  plus
      return
    }
    return c
  }
  
  public static func bottom(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom -  minus
      return
    }
    return c
  }
  
  public static func height(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height / dividedBy
      return
    }
    return c
  }
  
  public static func height(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height * multipliedBy
      return
    }
    return c
  }
  
  public static func width(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / dividedBy
      return
    }
    return c
  }
  
  public static func width(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width * multipliedBy
      return
    }
    return c
  }
  
  public static func left(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left - minus
      return
    }
    return c
  }
  
  public static func left(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left + plus
      return
    }
    return c
  }
  
  public static func right(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right - minus
      return
    }
    return c
  }
  
  public static func right(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right + plus
      return
    }
    return c
  }
  
  public static func centerX(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX / dividedBy
      return
    }
    return c
  }
  
  public static func centerX(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX * multipliedBy
      return
    }
    return c
  }
  
  public static func centerY(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY / dividedBy
      return
    }
    return c
  }
  
  public static func centerY(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY * multipliedBy
      return
    }
    return c
  }
  
  public static func centerY(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY + plus
      return
    }
    return c
  }
  
  public static func centerY(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY - minus
      return
    }
    return c
  }
  
  public static func centerYToView(_ view1: View, view2: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view1, view2){ view1, view2 in
      c = view1.centerY == view2.centerY
      return
    }
    return c
  }
  
}

//MARK: - Square
public extension CartographyKit{
  
  public static func squareEqualsWidth(_ view: View) {
    constrain(view){ view in
      view.width == view.superview!.width
      view.height == view.superview!.width
    }
  }
  
  public static func squareEqualsHeight(_ view: View) {
    constrain(view){ view in
      view.width == view.superview!.height
      view.height == view.superview!.height
    }
  }
  
  public static func squareEqualsWidth(_ view: View, dividedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width / dividedBy
      view.height == view.superview!.width / dividedBy
    }
  }
  
  public static func squareEqualsWidth(_ view: View, minus: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width - minus
      view.height == view.superview!.width - minus
    }
  }
  
  public static func squareEqualsWidth(_ view: View, multipliedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.width * multipliedBy
      view.height == view.superview!.width * multipliedBy
    }
  }
  
  public static func squareEqualsHeight(_ view: View, dividedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.height / dividedBy
      view.height == view.superview!.height / dividedBy
    }
  }
  
  public static func squareEqualsHeight(_ view: View, multipliedBy: CGFloat) {
    constrain(view){ view in
      view.width == view.superview!.height * multipliedBy
      view.height == view.superview!.height * multipliedBy
    }
  }
  
}


//MARK: - Halfs
public extension CartographyKit{
  
  public static func halfWidth(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == view.superview!.width / 2
      return
    }
    return c
  }
  
  public static func halfHeight(_ view: View) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == view.superview!.height / 2
      return
    }
    return c
  }
}


//MARK: - Pins
public extension CartographyKit{
  public static func pinTop(_ view: View){
    constrain(view){ view in
      view.top == view.superview!.top
      return
    }
  }
  
  public static func pinBottom(_ view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      return
    }
  }
  
  public static func pinLeft(_ view: View) {
    constrain(view){ view in
      view.left == view.superview!.left
      return
    }
  }
  
  public static func pinRight(_ view: View) {
    constrain(view){ view in
      view.right == view.superview!.right
      return
    }
  }
  
  public static func pinLeftRight(_ view: View) {
    constrain(view){ view in
      view.left == view.superview!.left
      view.right == view.superview!.right
    }
  }
  
  public static func pinTopLeft(_ view: View) {
    constrain(view){ view in
      view.top == view.superview!.top
      view.left == view.superview!.left
    }
  }
  
  public static func pinTopRight(_ view: View) {
    constrain(view){ view in
      view.top == view.superview!.top
      view.right == view.superview!.right
    }
  }
  
  public static func pinBottomLeft(_ view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      view.left == view.superview!.left
    }
  }
  
  public static func pinBottomRight(_ view: View) {
    constrain(view){ view in
      view.bottom == view.superview!.bottom
      view.right == view.superview!.right
    }
  }
}

//MARK: - Equals
extension CartographyKit: LayoutConstrainEquals{
  public static func width(_ view: View, equals: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.width == equals
    }
    return c
  }
  
  public static func height(_ view: View, equals: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.height == equals
    }
    return c
  }
}


//MARK: - To other views
extension CartographyKit: LayoutConstrainToOtherView{
  
  public static func topToOtherViewsBottom(_ view1: View, otherView: View, plus: CGFloat) {
    constrain(view1, otherView){view1, otherView in
      view1.top == otherView.bottom + plus
      return
    }
  }
  
  
  public static func bottomToOtherViewsTop(_ view1: View, otherView: View, minus: CGFloat) {
    constrain(view1, otherView){view1, otherView in
      view1.bottom == otherView.top - minus
      return
    }
  }
}

extension CartographyKit: LayoutConstrainEdges{
  public static func edges(_ view: View, plus: CGFloat) {
    constrain(view){ view in
      view.top == view.superview!.top + plus
      view.left == view.superview!.left + plus
      view.bottom == view.superview!.bottom + plus
      view.right == view.superview!.right + plus
      return
    }
  }
  
  public static func edges(_ view: View, minus: CGFloat) {
    constrain(view){ view in
      view.top == view.superview!.top - minus
      view.left == view.superview!.left - minus
      view.bottom == view.superview!.bottom - minus
      view.right == view.superview!.right - minus
      return
    }
  }
  
  #if os(iOS)
  public static func edges(_ view: View, insets: UIEdgeInsets) {
    constrain(view){ view in
      view.top == view.superview!.top + insets.top
      view.left == view.superview!.left + insets.left
      view.bottom == view.superview!.bottom + insets.bottom
      view.right == view.superview!.right + insets.right
      return
    }
  }
  #endif
}



