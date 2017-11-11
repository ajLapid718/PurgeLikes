## Background

I've been a member of Facebook since 2009. I would casually and frequently like various Facebook Pages here and there without much thought about the consequences down the line. Over time, the FB Pages accumulated and eventually developed into quite a sizeable amount. Personally, I have around 1200 liked pages, which means a lot of my news feed has become cluttered.

I wasn't particularly troubled by the situation, and I would unfollow a page every now and then, but it's useful to have this solution on tap for when I want to or when someone else eventually wants to make some significant changes to clean up their news feed. Most of the pages have become abandoned or have adopted the essence of spam so this is certainly a viable approach to getting back to seeing posts from people or pages we'd actually be interested in viewing.

Once all of the Liked Pages are done away with, the script creates a text file in the same directory that the script was executed in. This file will have the title `AllLikedPages.txt` and it will have an ordered list (numerical list) of all of the pages that were unliked. This allows the client to be more informed about the aftermath and the information might enable the client to re-like/re-subscribe to pages they were genuinely interested in following in the first place.

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
