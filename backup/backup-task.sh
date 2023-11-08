#!/bin/bash

rsync -av -e ssh <source directory from local server> <user_name>@<IP Address>:<destination directory to remote server>
