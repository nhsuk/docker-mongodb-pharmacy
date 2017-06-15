# 2. Decouple ETL from MongoDB image creation

Date: 2017-02-08

## Status

Accepted

## Context

Originally the ETL which created the source file to import into MongoDB was the home of the creation of the MongoDB 
image as well.

## Decision

While we were shaping our Docker image automation, a decoupling was suggested so for each repo to own its own pipeline.

## Consequences

The ETL and the Pharmacy DB are in different repos/services and we maintain single responsibility principle.
