# HN Bot

A Bot for fetching news from Hacker News
and publishing them to reddit [r/hackernews](https://www.reddit.com/r/hackernews/).

The motivation:
For some reddit users it is convenient.
There is no insta-kill in case of too many comments.

# Setup

You must create a ``praw.ini`` file for authentication information.
See the [official docs](https://praw.readthedocs.io/en/latest/getting_started/configuration/prawini.html).

# Running

This project uses virtualenv and pip.
The initial setup should run automatically the first time.
The Makefile captures all the magic, so you can just execute

    make run

It creates a local database of urls already posted.

For r/hackernews,
this run as an hourly cron job.

# Dockerfile

This project can also be run from within a Docker container.

    cp /path/to/praw.ini .
    docker build -t hnbot .
    docker run -d hnbot

# Licence: MIT

Copyright (c) 2017 Andreas Zwinkau

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
