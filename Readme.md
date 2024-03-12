# Cache Integration with RISC-V Processor

## Objectives

The objective of this project is to implement a simple cache system to be integerated  with the RISC-V processor previously implemented.

## Introduction

In this project, we will implement a simple caching system for the RISC-V processor, The following assumptions are made:

- Only data memory will be cached; instruction memory remains unaffected.
- There will be only one level of caching.
- The main memory module has a capacity of 4 Kbytes (word addressable using 10 bits or byte addressable using 12 bits).
- Main memory access (for read or write) takes 4 clock cycles.
- The data cache geometry is (512, 16, 1), indicating a total cache capacity of 512 bytes, each cache block being 16 bytes (implying 32 blocks in total), and utilizing direct mapping.
- The cache uses write-through and write-around policies for write hit and write miss handling, with no write buffers existing. This means all SW instructions need to stall the processor.
- LW instructions will only stall the processor in case of a miss.
