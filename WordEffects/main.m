//
//  main.m
//  WordEffects
//
//  Created by Ekam Singh Dhaliwal on 2019-05-27.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (TRUE) {
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
            
            
            // get the number and convert it into a string
            NSString *numString = [inputString substringWithRange:NSMakeRange(0, 1)];
//            NSLog(@"%@", numString);
            NSString *newString = [inputString substringWithRange: NSMakeRange(2, [inputString length] -2)];
//            NSLog(@"%@", newString);
            int num = [numString intValue];
            
         
            
        // Print out the correct operation
            switch (num) {
                case 1:
                    NSLog(@"Input was: %@", [newString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"Input was: %@", [newString lowercaseString]);
                    break;
                case 3:
                    if ([newString intValue] == 0 ) {
                        NSLog(@"You need to put in a number with this value");
                    } else {
                        NSLog(@"Input was: %d", [newString intValue]);
                    }
                    break;
                case 4:
                    NSLog(@"Input was: %@", [newString stringByAppendingString:@", eh?"]);
                    break;
                case 5:
                    if ([newString containsString:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    } else if ([newString containsString:@"?"]) {
                        NSLog(@"I don't know");
                    } else {
                        NSLog(@"You need to enter a question mark or an exclamation point");
                    }
                    break;
                case 6:
                    NSLog(@"Input was: %@", [newString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                default:
                    break;
            }
        
            
        }
       
    }
    return 0;
}
