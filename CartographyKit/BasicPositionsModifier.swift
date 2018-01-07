//
//  BasicPositionsModifier.swift
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

////////////////////////////////////////////////////////////////////////////////////////////////
//BasicPositions Modifier
////////////////////////////////////////////////////////////////////////////////////////////////
private protocol BasicPositionsPlus{
  static func top(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func left(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  //
  static func leading(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  //
  static func centerX(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  //
  #if os(iOS)
  static func topMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func leftMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  //
  static func leadingMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  //
  static func centerXWithinMargins(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  static func centerYWithinMargins(_ view: View, plus: CGFloat) -> NSLayoutConstraint?
  #endif
}

private protocol BasicPositionsMinus{
  static func bottom(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func right(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  //
  static func trailing(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  //
  static func centerX(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  //
  #if os(iOS)
  static func bottomMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func rightMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  //
  static func trailingMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  //
  static func centerXWithinMargins(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  static func centerYWithinMargins(_ view: View, minus: CGFloat) -> NSLayoutConstraint?
  #endif
}

//private protocol BasicPositionsEquals{
//  static func center(_ view: View, equalsX: CGFloat, equalsY: CGFloat) -> [NSLayoutConstraint?]
//}

//TODO: Is this even possible?
private protocol BasicPositionsMultiply{
  static func centerX(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  //
  #if os(iOS)
  static func centerXWithinMargins(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  static func centerYWithinMargins(_ view: View, multipliedBy: CGFloat) -> NSLayoutConstraint?
  #endif
}
//TODO: Is this even possible?
private protocol BasicPositionsDevide{
  static func centerX(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerY(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  //
  #if os(iOS)
  static func centerXWithinMargins(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  static func centerYWithinMargins(_ view: View, dividedBy: CGFloat) -> NSLayoutConstraint?
  #endif
}


////////////////////////////////////////////////////////////////////////////////////////////////
//BasicPositionsPlus
////////////////////////////////////////////////////////////////////////////////////////////////
extension CartographyKit: BasicPositionsPlus{
  @discardableResult
  public static func top(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.top == view.superview!.top + plus
      return
    }
    return c
  }
  
  @discardableResult
  public static func left(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.left == view.superview!.left + plus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func leading(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leading == view.superview!.leading + plus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func centerX(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX + plus
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerY(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY + plus
      return
    }
    return c
  }
  //
  #if os(iOS)
  @discardableResult
  public static func topMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.topMargin == view.superview!.topMargin + plus
      return
    }
    return c
  }
  
  @discardableResult
  public static func leftMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leftMargin == view.superview!.leftMargin + plus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func leadingMargin(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.leadingMargin == view.superview!.leadingMargin + plus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func centerXWithinMargins(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerXWithinMargins == view.superview!.centerXWithinMargins + plus
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerYWithinMargins(_ view: View, plus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerYWithinMargins == view.superview!.centerYWithinMargins + plus
      return
    }
    return c
  }
  #endif
}

////////////////////////////////////////////////////////////////////////////////////////////////
//BasicPositionsMinus
////////////////////////////////////////////////////////////////////////////////////////////////
extension CartographyKit: BasicPositionsMinus{
  @discardableResult
  public static func bottom(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottom == view.superview!.bottom - minus
      return
    }
    return c
  }
  
  @discardableResult
  public static func right(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.right == view.superview!.right - minus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func trailing(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailing == view.superview!.trailing - minus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func centerX(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerX == view.superview!.centerX - minus
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerY(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerY == view.superview!.centerY - minus
      return
    }
    return c
  }
  //
  #if os(iOS)
  @discardableResult
  public static func bottomMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.bottomMargin == view.superview!.bottomMargin - minus
      return
    }
    return c
  }
  
  @discardableResult
  public static func rightMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.rightMargin == view.superview!.rightMargin - minus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func trailingMargin(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.trailingMargin == view.superview!.trailingMargin - minus
      return
    }
    return c
  }
  //
  @discardableResult
  public static func centerXWithinMargins(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerXWithinMargins == view.superview!.centerXWithinMargins - minus
      return
    }
    return c
  }
  
  @discardableResult
  public static func centerYWithinMargins(_ view: View, minus: CGFloat) -> NSLayoutConstraint?{
    var c: NSLayoutConstraint?
    constrain(view){ view in
      c = view.centerYWithinMargins == view.superview!.centerYWithinMargins - minus
      return
    }
    return c
  }
  #endif
}
