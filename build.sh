#!/bin/bash

action=$1

function build()
{
    hugo -d docs/
}

function dev()
{
    hugo server
}

function main()
{
   if [ "$action" = "b" ]; then
      build 
   else 
       dev
   fi
}

main
