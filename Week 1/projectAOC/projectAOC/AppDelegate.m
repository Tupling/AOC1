//
//  AppDelegate.m
//  projectAOC
//
//  Created by Dale Tupling on 2/7/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Activity 1
    //Casting - Assignment Resubmit.
    float distance = 17.5;
    
    int quantity = 7;
    
    int distanceGoal = (int)distance;
    
    float dailyMiles = distance / quantity;
    
    NSLog(@"In order for me to maintain my physical fitness i need to run a certain distance daily.");
    
    NSLog(@"My goal is to run a distance of more than %d miles weekly, although my average for the past few weeks has been %.1f miles", distanceGoal, distance);
    
    NSLog(@"I find myself running on average %.1f miles daily seven days a week", dailyMiles);
    
    NSLog(@"Which will put me at a total of %.1f miles weekly", distance);
    
    //Single For Loop that decrease output
    for (int i =7; i>=1; i--)
    {
        NSLog(@"I have %d days until i start a new week", i);
    }
    
    //while loop to loop through days worked out
    int daysWorkedOut = 1;
    
    while (daysWorkedOut <= 7 )
    {
        NSLog(@"I have done my workout for %d day this week", daysWorkedOut);
        //incremend daysLeft by 1
        daysWorkedOut++;
    }
    
    NSLog(@"I now get to start over and work towards my weekly goal");
    
    // while loop with nested for loop

    int days = 0;
    
    while (days <7)
            
        {
            for (float milesDone=2.5f; milesDone <= 17.5f; milesDone += 2.5f)
                    
                {
                    NSLog(@"I have ran %.1f miles",milesDone);
            
                    //increment days by 1
                    days++;
                
                    NSLog(@"in %d days", days);
                }
    
        }
    
   
    
    
    //Refactors if , else if, else statement for Assignment resubmit
    
    float mileageCompleted = 12.5f;
    
    float mileageGoal = 17.5;
    
    BOOL sunday = YES;
    
    int completedDays = 4;
    
    //IF Else statement to check against and or comparison
     NSLog(@"My workouts are completed throughout the week.");

    if (((mileageCompleted == mileageGoal) && (sunday == YES)) || (completedDays == 7))
    {
        
        NSLog(@"I have met my goals for the week of %.1f miles and worked out for %d days.", mileageGoal, days);
        
    }else if((sunday == YES) && (!(mileageCompleted == mileageGoal))){
        
        NSLog(@"It is Sunday however, I have not completed my goals of %.1f miles in %d days. I must reach my goals by the end of the today.", mileageGoal, days);
        
    }else{
        NSLog(@"I have not reached any of my goals this week. I still have a couple days to do so.");
    }

    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
             // Replace this implementation with code to handle the error appropriately.
             // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        } 
    }
}

#pragma mark - Core Data stack

// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return _managedObjectContext;
}

// Returns the managed object model for the application.
// If the model doesn't already exist, it is created from the application's model.
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"projectAOC" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

// Returns the persistent store coordinator for the application.
// If the coordinator doesn't already exist, it is created and the application's store added to it.
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"projectAOC.sqlite"];
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. 
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter:
         @{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }    
    
    return _persistentStoreCoordinator;
}

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
