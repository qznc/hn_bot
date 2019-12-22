#!/usr/bin/env python3

import os
import boto3
from hn_bot import run

class posted_items_dynamodb:
    def __init__(self):
        dynamodb = boto3.resource('dynamodb')
        self.table = dynamodb.Table(os.environ['POSTED_ITEMS_TABLE'])

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        pass

    def has(self, item):
        item = self.table.get_item(Key={'id': item.url})
        return 'Item' in item

    def put(self, item):
        self.table.put_item(Item={'id': item.url})


def handler(event, context):
    with posted_items_dynamodb() as posted_items:
        run(posted_items)
