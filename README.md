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
