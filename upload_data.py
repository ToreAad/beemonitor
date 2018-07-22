#!/usr/bin/env python
import dropbox
import sys

import json

with open ("auth.secret") as f:
    auth_data = json.load(f)

access_token = auth_data["access_token"]


class TransferData:
    def __init__(self, access_token):
        self.access_token = access_token

    def upload_file(self, file_from, file_to):
        dbx = dropbox.Dropbox(self.access_token)

        with open(file_from, 'rb') as f:
            dbx.files_upload(f.read(), file_to, mode=WriteMode('overwrite', None))


def main():
    transferData = TransferData(access_token)

    file_from = './'+sys.argv[1]
    file_to = '/'+sys.argv[1]

    transferData.upload_file(file_from, file_to )

if __name__ == '__main__':
    main()
