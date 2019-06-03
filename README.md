<!-- README.md is generated from README.Rmd. Please edit that file -->



<!-- badges: start -->
[![Travis build status](https://travis-ci.org/news-r/newsriver.svg?branch=master)](https://travis-ci.org/news-r/newsriver)
<!-- badges: end -->

# newsriver

R wrapper to the [newsriver.io](https://newsriver.io/), an API to obtain news articles.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("news-r/newsriver")
```

## Setup

First, [create an account](https://newsriver.io) to obtain an API key. Then either specify the aforementioned key using `newsriver_key` or specify it as environment variable (likely in your `.Renviron`) as `NEWSRIVER_API_KEY`.

```r
library(newsriver)
newsriver_key("xXxxX")
```

## Example


```r
library(newsriver)
#> API key loaded!

news <- nr_search('language:en AND text("Trump")')
#> ℹ 100 results returned
news[[1]]
#> $id
#> [1] "_HV61hlnVNgiC5XB-U4tQpjRxmNbamfuUv996WLQlYzXutvCkdxLCiTqQq5TFeWGJ7JVGk3zx3ClUKnlJ-q3cA"
#> 
#> $publishDate
#> [1] "2015-04-15T12:04:50"
#> 
#> $discoverDate
#> [1] "2019-06-03T11:31:58.426+0000"
#> 
#> $title
#> [1] "Pinterest Your Passion"
#> 
#> $language
#> [1] "en"
#> 
#> $text
#> [1] "Sharing is caring! In this post, Gretchen from Retired by 40 gives us a look into why you should embrace what makes you weird and share it with the world – using Pinterest, of course. Last week, while browsing inspirational quotes on Pinterest (of course), I came across one that was kind of a game changer: If you think about it, this makes quite a bit of sense: Whatever makes you weird, you’re probably afraid to voice out loud. Maybe you even actively hide what makes you weird! But take a moment and think about this: That one weird thing is only considered weird because you could talk about it for days. Because your weirdness is not normal. Or even because your weirdness lies in uncharted territory. Not everyone can do what you do – and that’s awesome! What if we took the paragraph above, and replaced the word “weird” with “talented?” It would look something like this: That one talent is considered talent because you could talk about it for days. Because your talent is not normal. Or even because your talent lies in uncharted territory. Still skeptical? When Google started, were they considered weird? Absolutely! When Wikipedia started, were people skeptical? Definitely! And when eBay was started, was it considered crazy? You betcha! These mega-businesses were all started as the result of talent that made others look on them as weird. Their ideas weren’t originally embraced, but their creators pursued their talent relentlessly until the rest of the world caught on. Now, their creators are considered brilliant! Whatever makes you weird is not only where most of your talent lies, it makes you unique and crazy all at the same time, and you should embrace it! Just like Googles, Wikipedia, and eBay, you should pursue your passion as hard and as long as it takes – until the rest of the world catches on. And the best way to get your passion in front of millions? Pinterest! Hands down, the best, most flexible platform for introducing the world to new and crazy ideas is Pinterest, and the 70 million people who are using it. Pinterest levels the playing field between tried-and-true ideas and new crazy ideas that the world hasn’t embraced yet. With killer images, a pinch of SEO, and a solid content strategy, any talent, any weirdness can flourish on Pinterest. In the early days of Pinterest, images were king. It didn’t matter if you had the worst ideas, if you had cool pictures, they would get repinned. Now though, with the introduction of Smart Feed, Guided Search, and Related Content, your strategy for bringing your talent to as many people as possible should involve both great images and using search keywords in your pin descriptions. Tall, bright, beautiful images get your “foot in the door” so to speak. They make pinners pause a moment to look at the image. This leads them to read the pin descriptions (or the text overlay on the image) and if you’ve crafted your words carefully, they will click through to learn more about you and your crazy talent! So if you’ve been holding back, scared to pursue your talent, afraid of what the world will think – Go for it! Trust me, you won’t regret it!"
#> 
#> $structuredText
#> [1] "<div> \n <p>Sharing is caring!</p> \n <span></span> \n <p>In this post, Gretchen from Retired by 40 gives us a look into why you should embrace what makes you weird and share it with the world – using Pinterest, of course.</p> \n <p><a href=\"http://tailwind1-wpengine.netdna-ssl.com/wp-content/uploads/2015/04/Pinterest-your-Passion.png\"></a></p> \n <p>Last week, while browsing inspirational quotes on Pinterest (of course), I came across one that was kind of a game changer:</p> \n <p>If you think about it, this makes quite a bit of sense:</p> \n <p>Whatever makes you weird, you’re probably afraid to voice out loud. Maybe you even actively hide what makes you weird!</p> \n <p>But take a moment and think about this: That one weird thing is only considered weird because you could talk about it for days. Because your weirdness is not normal. Or even because your weirdness lies in uncharted territory.</p> \n <p>Not everyone can do what you do – and that’s awesome!</p> \n <p>What if we took the paragraph above, and replaced the word “weird” with “talented?”</p> \n <p>It would look something like this:</p> \n <p>That one talent is considered talent because you could talk about it for days.<br> Because your talent is not normal.<br> Or even because your talent lies in uncharted territory.</p> \n <p>Still skeptical?</p> \n <p>When Google started, were they considered weird? Absolutely!</p> \n <p>When Wikipedia started, were people skeptical? Definitely!</p> \n <p>And when eBay was started, was it considered crazy? You betcha!</p> \n <p>These mega-businesses were all started as the result of talent that made others look on them as weird. Their ideas weren’t originally embraced, but their creators pursued their talent relentlessly until the rest of the world caught on. Now, their creators are considered brilliant!</p> \n <p>Whatever makes you weird is not only where most of your talent lies, it makes you unique and crazy all at the same time, and you should embrace it!</p> \n <p>Just like Googles, Wikipedia, and eBay, you should pursue your passion as hard and as long as it takes – until the rest of the world catches on.</p> \n <p>And the best way to get your passion in front of millions?</p> \n <p>Pinterest!</p> \n <p>Hands down, the best, most flexible platform for introducing the world to new and crazy ideas is Pinterest, and the 70 million people who are using it.</p> \n <p>Pinterest levels the playing field between tried-and-true ideas and new crazy ideas that the world hasn’t embraced yet.</p> \n <p>With killer images, a pinch of SEO, and a solid content strategy, any talent, any weirdness can flourish on Pinterest.</p> \n <p>In the early days of Pinterest, images were king. It didn’t matter if you had the worst ideas, if you had cool pictures, they would get repinned.</p> \n <p>Now though, with the introduction of Smart Feed, Guided Search, and Related Content, your strategy for bringing your talent to as many people as possible should involve both great images and using search keywords in your pin descriptions.</p> \n <p>Tall, bright, beautiful images get your “foot in the door” so to speak. They make pinners pause a moment to look at the image. This leads them to read the pin descriptions (or the text overlay on the image) and if you’ve crafted your words carefully, they will click through to learn more about you and your crazy talent!</p> \n <p>So if you’ve been holding back, scared to pursue your talent, afraid of what the world will think –</p> \n <p>Go for it!</p> \n <p>Trust me, you won’t regret it!</p> \n</div>"
#> 
#> $url
#> [1] "https://blog.tailwindapp.com/pinterest-your-passion/"
#> 
#> $elements
#> $elements[[1]]
#> $elements[[1]]$type
#> [1] "Image"
#> 
#> $elements[[1]]$primary
#> [1] TRUE
#> 
#> $elements[[1]]$url
#> [1] "https://blog.tailwindapp.com/wp-content/uploads/2015/04/Pinterest-your-Passion.png"
#> 
#> $elements[[1]]$width
#> NULL
#> 
#> $elements[[1]]$height
#> NULL
#> 
#> $elements[[1]]$title
#> NULL
#> 
#> $elements[[1]]$alternative
#> NULL
#> 
#> 
#> 
#> $website
#> $website$name
#> [1] "blog.tailwindapp.com/"
#> 
#> $website$hostName
#> [1] "blog.tailwindapp.com"
#> 
#> $website$domainName
#> [1] "tailwindapp.com"
#> 
#> $website$iconURL
#> NULL
#> 
#> $website$countryName
#> [1] ""
#> 
#> $website$countryCode
#> [1] ""
#> 
#> $website$region
#> NULL
#> 
#> 
#> $metadata
#> $metadata$readTime
#> $metadata$readTime$type
#> [1] "readTime"
#> 
#> $metadata$readTime$seconds
#> [1] 132
#> 
#> 
#> 
#> $score
#> [1] 4.313447
```
