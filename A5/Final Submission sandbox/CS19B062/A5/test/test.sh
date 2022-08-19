#!/bin/bash
    COUNT=0
    PASS=0
    rm ./expectedOutputs/*
    find ./miniRA -type f -name "*.miniRA" | while read tin;
    do
	tin="${tin%.*}"
        java -jar kgi.jar < "./miniRA/$(basename "$tin").miniRA" > "./expectedOutputs/$(basename "$tin").eans"
    done
