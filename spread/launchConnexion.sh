#!/bin/bash

scp /root/Desktop/connexion.sh etu@$1
ssh etu@$1 'bash -s' < connexion.sh $1
