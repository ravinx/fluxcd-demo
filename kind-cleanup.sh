#!/bin/bash

kind get clusters | xargs -t -n1 kind delete cluster --name
