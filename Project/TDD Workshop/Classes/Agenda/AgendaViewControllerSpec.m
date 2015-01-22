#import "Specs.h"

#import "AgendaViewController.h"
#import "FakeAgendaProvider.h"
#import "FakeTableView.h"

SPEC_BEGIN(AgendaViewController)

describe(@"AgendaViewController", ^{
    __block AgendaViewController *viewController;

    beforeEach(^{
        viewController = [[AgendaViewController alloc] init];
    });
    
    afterEach(^{
        viewController = nil;
    });

    /*
    Section: Return Value Tests

    Task: Agenda VC misses title and tab bar item setup, write 3 simple tests and implement production code to obtain
    the following:
    - viewController's title is set to Agenda
    - viewController's tabBarItem has title set to Agenda
    - viewController's tabBarItem has image set to "agenda.png"

    Key Classes: AgendaViewControllers
    Tips: The check image you can simply use imageNamed: (it's caching)
 */

    describe(@"title", ^{
        it(@"should be set to 'Agenda'", ^{
            expect(viewController.title).to.equal(@"Agenda");
        });
    });

    describe(@"tab bar item", ^{
        it(@"should have a agenda image", ^{
            expect(viewController.tabBarItem.image).to.equal([UIImage imageNamed:@"agenda"]);
        });

        it(@"should have a 'Agenda' title", ^{
            expect(viewController.tabBarItem.title).to.equal(@"Agenda");
        });
    });

    /*
   Section: State Test
   Task: When viewDidLoad is called we would like to fetch agenda items (via AgendaProvider instance) and when it's done -
   agenda table view should be reloaded - it should be in reloaded *state*.
   Implement that feature together with a test which checks:
   - agenda provider reload is started on viewDidLoad
   - once provider finishes - table view should be reloaded

   Key Classes: AgendaViewController, AgendaProvider, FakeAgendaProvider, FakeTableView
   Tips:
   -   Add functionality to simulate completion in FakeAgendaProvider,
   -   Make use of FakeTableView (possibly extend it) to check if table was reloaded
    */

    describe(@"view did load", ^{

        __block FakeAgendaProvider *fakeAgendaProvider;

        beforeEach(^{
            //Arrange
            //TODO setup fake provider

            //Act
            //TODO trigger functionality of AgendaViewController
        });

        it(@"should schedule agenda reload", ^{
            //TODO
        });

        context(@"when reload agenda completes", ^{

            __block FakeTableView *fakeTableView;

            beforeEach(^{
                //Arrange
                //TODO setup fake table view

                //Act
                //TODO simulate completion of FakeAgendaProvider
            });

            it(@"should reload table view", ^{
                //TODO
            });

        });
    });

});

SPEC_END
