import XCTest

public class MainPage: BaseTest {
    lazy var curtainCloseBtn = app.staticTexts["Close"]
    lazy var topTabBtnMovie = app.staticTexts["КИНО"]
    
    @discardableResult
    func tapTopTabBtnMovie(comletion: Completion = nil) -> Self {
        log("tap the Top Tab Btn Movie")
        curtainCloseBtn.tap()
        topTabBtnMovie.tap()
        return self
    }
}
