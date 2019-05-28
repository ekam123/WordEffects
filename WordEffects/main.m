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
            NSMutableString *inputString = [NSMutableString stringWithUTF8String:inputChars];
    
            
            // get the number and convert it into a string
            NSMutableString *numString = [[inputString substringWithRange:NSMakeRange(0, 1)] mutableCopy];
//            NSLog(@"%@", numString);
            [inputString deleteCharactersInRange:NSMakeRange(0,2)] ; //for some reason this adds a newline character
            [inputString deleteCharactersInRange:NSMakeRange([inputString length] - 1, 1)];
//            NSLog(@"%@", newString);
            int num = [numString intValue];
            
      
            
        // Print out the correct operation
            switch (num) {
                case 1:
                    NSLog(@"Input was: %@", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"Input was: %@", [inputString lowercaseString]);
                    break;
                case 3:
                    if ([inputString intValue] == 0 ) {
                        NSLog(@"You need to put in a number with this value");
                    } else {
                        NSLog(@"Input was: %d", [inputString intValue]);
                    }
                    break;
                case 4:
                    NSLog(@"Input was: %@", [inputString stringByAppendingString:@", eh?"]);
                    break;
                case 5:
                    if ([inputString hasSuffix:@"!"]) {
                        NSLog(@"Whoa, calm down!");
                    }
                    else if ([inputString containsString:@"?"]) {
                        NSLog(@"I don't know");
                    }
                    else {
                        NSLog(@"You need to enter a question mark or an exclamation point");
                    }
                    break;
                case 6:
                    NSLog(@"Input was: %@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                case 7:
                    NSLog(@"The length of this string is %lu: ", (unsigned long)[inputString length]);
                    break;
                case 8:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@"a" withString:@"😎"]);
                    break;
                case 9:
                    NSLog(@"ererwr");
                    NSLog(@"hi");
                default:
                    break;
            }
        
            
        }
       
    }
    return 0;
}
