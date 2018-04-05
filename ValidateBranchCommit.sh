#!/bin/bash

if [[ "$(git branch --contains "${COMMIT_ID}")" == "* ${BRANCH_TO_BUILD}" ]]
then
 echo "${COMMIT_ID}  belongs to Branch ${BRANCH_TO_BUILD}"
else
 echo "${COMMIT_ID} does not belongs to Branch ${BRANCH_TO_BUILD}" 
 exit -1
fi
