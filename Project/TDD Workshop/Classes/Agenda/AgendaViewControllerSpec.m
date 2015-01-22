#import "Specs.h"

#import "AgendaViewController.h"

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
});

SPEC_END
