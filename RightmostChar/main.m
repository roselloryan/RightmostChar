//
//  main.m
//  RightmostChar


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *line = @"Hell0 World,0";
        NSArray *commaSeperatedArray = [line componentsSeparatedByString:@","];
        NSString *letter = [commaSeperatedArray objectAtIndex:1];
        NSString *stringToSearch = [commaSeperatedArray objectAtIndex:0];
//        NSMutableArray *mutArrayOfStringToSearchChars = [[NSMutableArray alloc]init];
        NSInteger indexCharFoundAt = -1;
        
//        if ([stringToSearch containsString:letter]) {
//            // find its index
//            NSRange foundRange = [stringToSearch rangeOfString:letter];
//            NSLog(@"%lu", foundRange.location);
//        }
//        else {
//            // printf -1 and \n
//            NSLog(@"-1\n");
//        }
        NSInteger i = 0;
        for (i = 0; i < stringToSearch.length; i++) {
            NSString *charString = [NSString stringWithFormat:@"%c", [stringToSearch characterAtIndex:i]];
            
            if ([charString isEqualToString:letter]) {
                indexCharFoundAt = i;
            }
            else {
                // do nothing
            }
        }
        NSString *solutionString = [NSString stringWithFormat:@"%ld", indexCharFoundAt];
        NSLog(@"\nindexCharFoundAt: %ld\n\n", indexCharFoundAt);
    
    }
    return 0;
}
