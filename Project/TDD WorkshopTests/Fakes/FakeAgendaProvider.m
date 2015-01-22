//
// Copyright (c) 2014 Mobile Warsaw. All rights reserved.
//


#import "FakeAgendaProvider.h"


@implementation FakeAgendaProvider

- (void)reloadAgendaWithCompletionHandler:(void (^)(void))completionHandler {
    self.reloadAgendaCalled = YES;
    self.reloadCompletionHandler = completionHandler;
}

- (void)simulateCompletedReloadWithItems:(NSArray *)items {
    self.agendaItems = items;
    if (self.reloadCompletionHandler) {
        self.reloadCompletionHandler();
    }
}

@end
