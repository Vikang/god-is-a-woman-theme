// Create a string to write to the file
NSString *stringToWrite = @"Hello, world!";

// Get a file path to write the file to
NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
filePath = [filePath stringByAppendingPathComponent:@"example.txt"];

// Write the string to the file
NSError *error;
BOOL success = [stringToWrite writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&error];
if (!success) {
    NSLog(@"Error writing to file: %@", error);
}
