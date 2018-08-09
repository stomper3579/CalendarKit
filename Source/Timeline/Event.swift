import UIKit

public enum CalendarEventType {
  case appointment
  case blocktime
}

open class Event: EventDescriptor {
  public var startDate = Date()
  public var endDate = Date()
  public var guid = ""
  public var regardingObjectId = ""
  public var calendarEventType: CalendarEventType?
  public var isAllDay = false
  public var text = ""
  public var attributedText: NSAttributedString?
  public var color = UIColor.blue {
    didSet {
      backgroundColor = color.withAlphaComponent(0.3)
      var h: CGFloat = 0, s: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
      color.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
      textColor = UIColor(hue: h, saturation: s, brightness: b * 0.4, alpha: a)
    }
  }
  public var backgroundColor = UIColor.blue.withAlphaComponent(0.3)
  public var textColor = UIColor.black
  public var font = UIFont.boldSystemFont(ofSize: 12)
  public var userInfo: Any?
  public init() {}
}
