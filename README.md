## Background

I've been a member of Facebook since 2009. Between then and now, I would find myself casually and frequently liking various Facebook Pages. Lo and behold, the FB Pages accumulated and eventually snowballed into quite a sizeable amount. A noticeable portion of my News Feed has become fairly cluttered.

I wasn't particularly troubled by the situation, and I would unfollow a page every now and then, but it's still useful to have this solution on tap for when anyone (myself included) feels inclined to make some significant changes by cleaning up their subscriptions. Most of the pages have become abandoned and/or are pushing content that have adopted the essence of spam. Using this program is certainly a viable approach to improve upon filtering the information on our News Feed. 

Once all of the Liked Pages are done away with, the script creates a text file in the same directory it was executed in. This file will have the title `AllLikedPages.txt` and it will contain an ordered list (numerical list) of all of the pages that were unliked. This allows the individual to become informed about the aftermath from a certain vantage point. The information is likely to enable the person to re-like/re-subscribe to pages they were genuinely and originally interested in while skipping over irrelevant material.

## The Situation

![Problem](Misc/FBLikesDisplay.gif)

## Expected Output I

![Solution](Misc/FBLikesOutput.gif)

## Expected Output II

![List of Likes](Misc/FBLikesOutputTextFile.gif)

## Dependencies
***If there is anything unclear about the dependencies, implementation, or environment configuration, please feel free to look at my other repositories titled "YahooFantasyScript" and "HandleFollows" for potentially helpful details***

- Ruby 2.3.3
- Watir 6.8.4
- Highline 1.7.8
- Google Chrome
- ChromeDriver

## Implementation

1) Clone, download, or fork this repository to your local machine
2) Ensure that all the dependencies are properly installed and configured
3) Run the command `bundle install`
4) Execute the script by entering `ruby 'Unlike_Procedure.rb'`

## Prompts

You will be prompted for the following information:
- E-Mail Address for Facebook
- Password for Facebook
- Password Confirmation

```
Enter your e-mail address: abcdefgh123@aol.com
Enter your password: ********
Confirm your password: ********
```
