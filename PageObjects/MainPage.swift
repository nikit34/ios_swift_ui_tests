import XCTest

public class MainPage: BaseTest {
    override var rootElement: XCUIElement {
        return text("КИНО")
    }
    
    lazy var curtainCloseBtn = button("Close")
    lazy var topTabBtnMovie = text("КИНО")
    lazy var topTabBtnTheaters = text("ТЕАТРЫ")
    lazy var topTabBtnConcerts = text("КОНЦЕРТЫ")
    lazy var topTabBtnEvents = text("МЕРОПРИЯТИЯ")
    
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
