---
title: "How This PHP Developer Ended Up With A (PHP-Free) Static Website"
excerpt: "The philosophies and decisions that went into choosing a static site for my personal website."
image: "https://images.unsplash.com/photo-1564760055775-d63b17a55c44?ixlib=rb-1.2.1&q=60&fm=jpg&crop=entropy&cs=tinysrgb&w=1200"
image_credit: "Photo by Mylon Ollila on Unsplash"
---

I have a confession to make... Over the last few years, I've developed an increasing distaste for WordPress. It's not that WordPress 
isn't a great platform, I really do think it's wonderful and have used it on numerous client websites over the last 12 years or so.
I've just been exposed to too many projects where developers have to take a perfectly good blogging platform 
and try to hack it into a full web application with a barrage of plugins and workarounds. Again, this isn't criticism of WP, just 
a little background into why I started looking into alternatives to power my blog.

It seems that over the last few years, the static site has been making a comeback. Of course, this time, they're not coming 
by way of Frontpage, Dreamweaver, or spaghetti code ala notepad.exe. They're built using sophisticated static site
generators like [Hugo](https://gohugo.io/){:target="_blank"} and [Jekyll](https://jekyllrb.com/){:target="_blank"} 
(the latter is the one I've been using). I could have used other tools, of course. I code in the Laravel framework 
pretty much every single day of the week, and certainly could have quickly spun up a new installation with a model 
or two, ran some migrations, and got to work. But, a few thoughts stayed with me and drove me to a static site.

### Source control everything.

Git is one of the best tools at our disposal. If I could, I would source control most everything. There are a few things 
you should not source control (and a whole lot more that are not really practical), but text files are the perfect 
candidate for being tracked. The idea of adding posts to a repository and seeing every little change in the writing process 
makes my inner control freak very happy. Beyond that, having editorial content go through a git-flow-style cycle 
is comfortable and familiar. 

With my Jekyll site, I use [Markdown](https://daringfireball.net/projects/markdown/syntax){:target="_blank"} to create 
content. This allows me to skip all of the HTML tag building, and almost exclusively focus on the writing. These Markdown 
files get committed and are stored at GitHub while the compiled HTML does not. If I wanted or needed to, I could even 
write and edit new posts directly in GitHub using their Markdown editor. More on how GitHub and other sites impacted 
my decision in a bit. 

### Do not draw your sword to kill a fly.

The thought of not going down the overkill route has been stewing in my mind for some time. There's a Korean proverb 
that states "do not draw your sword to kill a fly." It often makes sense to prepare for future growth. Certainly when 
developing web applications, this is something for which I have learned to prepare. A client that says "we only need X" 
inevitably needs "Y" when they're hiring you to build an app. Maybe not today, maybe not tomorrow, but eventually. 
However, when it comes to this simple project, a simple platform is what I desire. This isn't an app with features that 
will one day make me wish I had just used an MVC to begin with&mdash;it's a blog. 

Beyond the simplicity of structure and workflow, you can't beat the speed that comes with a web server only having to 
deliver some static HTML, CSS, and Javascript files. Moreover, I'm not giving up a lot in terms of features since 
there is *[plenty of flexibility](https://jekyllrb.com/docs/){:target="_blank"}* in how a static site generator 
produces your pages.

### One less thing to update (and pay for).

Lastly, a very enticing prospect of using a static site is security&mdash;no WordPress security patches, plugin updates, or 
Composer packages to keep up-to-date. Some static hosting services such as [Netlify](https://www.netlify.com/){:target="_blank"} or 
[GitHub Pages](https://pages.github.com/){:target="_blank"} that have generous free versions for personal and business 
sites also allow me keep my own domain name. If the free tier of hosting is ever removed or I need to host my website 
somewhere else, the migration path is essentially pain-free. A quick rsync and DNS change is all that is needed to move 
to a self-hosted, low-resource blog hosted on a DigitalOcean Droplet or Amazon S3.

I've used Jekyll to build a number of static websites prior to this blog (mostly small landing pages and some 
documentation sites), but this will be the first time I'm using it to update blog posts on a regular basis. I'll let you 
know how it goes. 

Now excuse me while I commit this post...
