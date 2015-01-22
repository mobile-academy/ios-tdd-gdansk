#import "Specs.h"

#import "AgendaViewController.h"
#import "FakeAgendaProvider.h"
#import "FakeTableView.h"
#import "AgendaItem.h"
#import "AgendaItemFixture+Fixture.h"

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
            fakeAgendaProvider = [FakeAgendaProvider new];
            viewController.agendaProvider = (id) fakeAgendaProvider;

            //Act
            [viewController viewDidLoad];
        });

        it(@"should schedule agenda reload", ^{
            expect(fakeAgendaProvider.reloadAgendaCalled).to.beTruthy();
        });

        context(@"when reload agenda completes", ^{

            __block FakeTableView *fakeTableView;

            beforeEach(^{
                //Arrange
                fakeTableView = [FakeTableView new];
                viewController.view = fakeTableView;

                //Act
                [fakeAgendaProvider simulateCompletedReloadWithItems:@[ [AgendaItem fixture] ]];
            });

            it(@"should reload table view", ^{
                expect(fakeTableView.reloadDataCalled).to.beTruthy();
            });

        });
    });

    /*
    Section: Interaction Test
    Task: Using our FakeAgendaProvider make sure that AgendaViewController correctly setup its table view
     according to the items fetched from provider. Verify *interaction* between table view, controller and provider -
     write tests and implement the following:
     - table view  has 1 section
     - when 0 items were fetched, table view should have 0 cells
     - when 2 items were fetched, table view should have 2 cells
     - when 2 items were fetched, all cells should be an instance of AgendaTableViewCell
     - each cell textLabel should have text set corresponding title of AgendaItem

     Key Classes: AgendaViewController, FakeAgendaProvider, AgendaItem (Fixture)
     Tips: Use the fact that AgendaViewController is a subclass of UITableViewController which conforms to UITableViewDataSource
     and UITableViewDelegate - to obtain information about table view.
 */

    describe(@"table view", ^{

        it(@"should have 1 section", ^{
            //TODO
        });

        context(@"with 0 items", ^{
            //TODO
        });

        context(@"with 2 items", ^{
            //TODO
        });

        context(@"cell setup", ^{
            //TODO
        });
    });

});

SPEC_END
