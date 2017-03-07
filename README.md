# HN Bot

A Bot for fetching news from Hacker News
and publishing them to reddit.

# Setup

You must create a ``praw.ini`` file for authentication information.
See the [official docs](https://praw.readthedocs.io/en/latest/getting_started/configuration/prawini.html).

# Running

This project uses virtualenv and pip.
The initial setup should run automatically the first time.
The Makefile captures all the magic, so you can just execute

    make run

It creates a local database of urls already posted.
