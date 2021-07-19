import XCTest

public class MainPage: BaseTest {
    override var rootElement: XCUIElement {
        return app.staticTexts["КИНО"]
    }
    
    lazy var curtainCloseBtn = app.buttons["Close"]
    lazy var topTabBtnMovie = app.staticTexts["КИНО"]
    lazy var topTabBtnTheaters = app.staticTexts["ТЕАТРЫ"]
    lazy var topTabBtnConcerts = app.staticTexts["КОНЦЕРТЫ"]
    lazy var topTabBtnEvents = app.staticTexts["МЕРОПРИЯТИЯ"]
    
    @discardableResult
    func tapTopTabBtn(comletion: Completion = nil) -> Self {
        log("tap the Top Tab Btn Movie")
        curtainCloseBtn.tap()
        XCTAssertEqual(topTabBtnMovie.isHittable, true)
        XCTAssertEqual(topTabBtnTheaters.isHittable, true)
        XCTAssertEqual(topTabBtnConcerts.isHittable, true)
        XCTAssertEqual(topTabBtnEvents.isHittable, true)
        return self
    }
}
