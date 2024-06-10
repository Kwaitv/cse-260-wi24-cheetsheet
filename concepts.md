# General Concepts
Amdahl’s Law – strong scaling.
Gustafson’s Law – weak scaling
Little’s Law
Speedup (Sp)  and Efficiency (Ep)
Memory Hierarchy – relative speeds and sizes

## Performance Prediction
W(n)/D(n)   -  number of “nodes” vs depth of longest path
Tcomp = D(n) + [W(n) – D(n)]/p
 
# Roofline model 
Interpretation of roofline model
Relationship to arithmetic capability and memory bandwidth 

# Matrix Multiply
Calculating q (computational intensity) 
Tiling/blocking/Packing
number of ops. in C = AB + C  for m,n,k 
outer vs inner product

## Parallel Matrix multiplication
Cannon’s algorithm (Tp and Ep)
Communication avoidance
Theoretical lower bound on communication (# OF words moved and # of messages).
Johnson’s 3D algorithm
2.5D algorithm

# SIMD
Vectorization 
Stripmining
Control divergence
Loop carried dependencies

# Multithreading
OpenMP – ideas behind
Parallelization of loops – types of dependencies (true, output, anti)
Pthreads – ideas behind
OpenMP and dataraces
Barriers, atomics, mutex
OpenMP reductions

 

# Principles of GPU architecture
GPU Memory Hierarchy
GPU Thread Hierarchy
GPU warp scheduling
GPU thread mapping to warps
Matrix Multiply on GPU – techniques (e.g. tiling)
Estimated speedup from tiling
Parallel Speedup computation
Occupancy and interpretation of occupancy
GPU Memory Interleaving
GPU Memory Coalescing
GPU Bank access and bank conflict avoidance
Thread Level and Instruction Level Parallelism
Concept of Arithmetic Latency and Memory Latency in GPUs 
Little’s Law and GPUs
Cusp behavior – TLP and ILP
CUDA compilation flow to achieve source code portability between generations
(nvcc->ptx->ptxas->binary)
Predication vs. branching, thread divergence
Stripmining in the context of GPUs
– pipelines
Pipeline hazards, dependencies 
CPU pipelines vs GPU pipelines
Emphasis on latency reduction, emphasis on throughput
Scoreboarding in a GPU – detect when dependencies are resolved
Control divergence in a GPU
Costs – why does it happen
Do all branches cause control divergence?
Reduction operation in a GPU and how to lessen control divergence



# Message Passing 
Bulk Synchronous Parallelism model
Stencil Methods
What kinds of problems are amenable to stencil methods
ghost cells
Basic MPI concepts : Rank, ordering guarantees/causality, synchronous and 
asynchronous models. Mpi communicators, mpi tags.
MPI_Bcast, Scatter, Gather Reduce, etc.  and why you might use them (you don’t 
need to memorize their detailed behavior, but you should know generally when 
you might use them).
Difference in user semantics for blocking and non-blocking send/recv (when you can use
  the buffers, what you have to do to synchronize non-blocking comms)
One-sided communications

## Modeling Performance of MPI (γ, α, β model)
TotalTIme = γ x #ops  +  #msgs x (α + β-1∞n)  where n is the msg size.

## Super linear speedup
Fake vs Real
Amdahl’s Law – strong scaling
Gustafson – weak scaling
What do we mean by isoefficiency function N= f(P)
Grind time.
Why would one use a strip instead of a rectangular submesh based on problem size and


## Communication parameters 
Surface vs volume effect
Effect of higher dimension grid on surface to volume effect.
Effect of higher dimensions on cache locality.
 



# Special Purpose Accelerators (covered in week 10)
How systolic array does matrix multiplication
Difference between Cannon’s algorithm and TPU’s systolic array
Why CISC instructions in the TPU

 

# Higher Level abstractions
Major differences between, pthreads, openMP, Cuda, MPI
