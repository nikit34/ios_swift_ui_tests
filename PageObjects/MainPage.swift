import XCTest

public class MainPage: BaseTest {
    override var rootElement: XCUIElement {
        return text("КИНО")
    }
    
    lazy var curtainCloseBtn = app.buttons["Close"]
    lazy var topTabBtnMovie = app.staticTexts["КИНО"]
    lazy var topTabBtnTheaters = app.staticTexts["ТЕАТРЫ"]
    lazy var topTabBtnConcerts = app.staticTexts["КОНЦЕРТЫ"]
    lazy var topTabBtnEvents = app.staticTexts["МЕРОПРИЯТИЯ"]
    
    @discardableResult
    func viewCurtainCloseBtn(completion: Completion = nil) -> Self {
        log("view Curtain Close Btn")
        XCTAssertTrue(curtainCloseBtn.isHittable)
        return self
    }
    
    @discardableResult
    func viewTopTabBtn(completion: Completion = nil) -> Self {
        log("tap the Curtain Close Btn and view Top Tabs Btn")
        curtainCloseBtn.tap()
        XCTAssertTrue(topTabBtnMovie.isHittable)
        XCTAssertTrue(topTabBtnTheaters.isHittable)
        XCTAssertTrue(topTabBtnConcerts.isHittable)
        XCTAssertTrue(topTabBtnEvents.isHittable)
        return self
    }
}
