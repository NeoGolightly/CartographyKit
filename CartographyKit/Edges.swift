//
//  Edges.swift
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
//Edges
////////////////////////////////////////////////////////////////////////////////////////////////
private protocol BasicEdges{
  static func edges(_ view: View) -> [NSLayoutConstraint?]
  #if os(iOS)
  static func edgesWithinMargins(_ view: View) -> [NSLayoutConstraint?]
  #endif
}

////////////////////////////////////////////////////////////////////////////////////////////////
//BasicEdges Modifier
////////////////////////////////////////////////////////////////////////////////////////////////
private protocol EdgesInsetsPlus{
  static func edges(_ view: View, plus: CGFloat) -> [NSLayoutConstraint?]
}

private protocol EdgesInsetsMinus{
  static func edges(_ view: View, minus: CGFloat) -> [NSLayoutConstraint?]
}

private protocol EdgesInsets{
  static func edgesInset(_ view: View, all: CGFloat) -> [NSLayoutConstraint?]
  static func edgesInset(_ view: View, horizontally horizontal: CGFloat) -> [NSLayoutConstraint?]
  static func edgesInset(_ view: View, vertically vertical: CGFloat) -> [NSLayoutConstraint?]
  static func edgesInset(_ view: View, horizontally horizontal: CGFloat, vertically vertical: CGFloat) -> [NSLayoutConstraint?]
  static func edgesInset(_ view: View, top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) -> [NSLayoutConstraint?]
  #if os(iOS)
  static func edgesWithinMargins(_ view: View, all: CGFloat) -> [NSLayoutConstraint?]
  static func edgesWithinMargins(_ view: View, horizontally horizontal: CGFloat) -> [NSLayoutConstraint?]
  static func edgesWithinMargins(_ view: View, vertically vertical: CGFloat) -> [NSLayoutConstraint?]
  static func edgesWithinMargins(_ view: View, horizontally horizontal: CGFloat, vertically vertical: CGFloat) -> [NSLayoutConstraint?]
  static func edgesWithinMargins(_ view: View, top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) -> [NSLayoutConstraint?]
  static func edges(_ view: View, insets: UIEdgeInsets)-> [NSLayoutConstraint?]
  #endif
}

extension CartographyKit: BasicEdges{
  @discardableResult
  public static func edges(_ view: View) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins
      return
    }
    return c
  }
}

extension CartographyKit: EdgesInsetsPlus{
  @discardableResult
  public static func edges(_ view: View, plus: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(by: plus)
      return
    }
    return c
    
  }
}

extension CartographyKit: EdgesInsetsMinus{
  @discardableResult
  public static func edges(_ view: View, minus: CGFloat) -> [NSLayoutConstraint?]{
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(by: -minus)
      return
    }
    return c
  }
}

extension CartographyKit: EdgesInsets{
  @discardableResult
  public static func edgesInset(_ view: View, all: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(by: all)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesInset(_ view: View, horizontally horizontal: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(horizontally: horizontal)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesInset(_ view: View, vertically vertical: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(vertically: vertical)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesInset(_ view: View, horizontally horizontal: CGFloat, vertically vertical: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(horizontally: horizontal, vertically: vertical)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesInset(_ view: View, top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edges == view.superview!.edges.inseted(top: top, leading: leading, bottom: bottom, trailing: trailing)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View, all: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(by: all)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View, horizontally horizontal: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(horizontally: horizontal)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View, vertically vertical: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(vertically: vertical)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View, horizontally horizontal: CGFloat, vertically vertical: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(horizontally: horizontal, vertically: vertical)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edgesWithinMargins(_ view: View, top: CGFloat, leading: CGFloat, bottom: CGFloat, trailing: CGFloat) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(top: top, leading: leading, bottom: bottom, trailing: trailing)
      return
    }
    return c
  }
  
  @discardableResult
  public static func edges(_ view: View, insets: UIEdgeInsets) -> [NSLayoutConstraint?] {
    var c: [NSLayoutConstraint?]  = []
    constrain(view){ view in
      c = view.edgesWithinMargins == view.superview!.edgesWithinMargins.inseted(by: insets)
      return
    }
    return c
  }
}


