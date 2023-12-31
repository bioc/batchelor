\name{batchelornews}
\title{batchelor News}
\encoding{UTF-8}

\section{Version 1.16.0}{\itemize{
\item Bugfix to rownames of \code{mnnCorrect()} output when using \code{correct.all=TRUE} with \code{subset.row=}.
}}

\section{Version 1.8.0}{\itemize{
\item Migrate \code{findMutualNN()} to \pkg{BiocNeighbors}.

\item Support \code{d=NA} in \code{multiBatchPCA()} for more convenient disabling of PCA in calling functions.

\item Bugfix for \code{d=NA} with specified \code{subset.row=} in \code{fastMNN()}.

\item Added the \code{applyMultiSCE()} function to easily apply functions across main/alternative Experiments from multiple SingleCellExperiment inputs.

\item Added the \code{mnnDeltaVariance()} function to compute diagnostics from the variances of the differences between MNN pairs.

\item Added the \code{quickCorrect()} function to quickly perform intersection, normalization, feature selection and correction.

\item Added some clustering-based diagnostics (\code{clusterAbundanceVar()}, \code{clusterAbundanceTest()} and \code{compareMergedClusters()}) from the OSCA book.

\item File-backed matrices are now realized into memory prior to \code{multiBatchPCA()}. 
}}

\section{Version 1.6.0}{\itemize{
\item Allow \code{regressBatches()} to operate without \code{batch=} when \code{design=} is provided.
Added \code{d=} and related options to conveniently perform a PCA on the \linkS4class{ResidualMatrix}.

\item Added \code{correct.all=} option to all correction functions for consistency.

\item Added a \code{deferred=TRUE} default to \code{multiBatchPCA} and its callers,
to encourage use of deferred matrix multiplication for speed.

\item Switched default PCA algorithm in \code{multiBatchPCA} to \linkS4class{IrlbaParam}.

\item Added \code{add.single=} mode for endomorphic addition of correction results in \code{correctExperiments()}.
}}

\section{Version 1.4.0}{\itemize{
\item Support the use of arbitrary design matrices in \code{regressBatches()}.

\item Allow lists of objects to be directly passed into the \code{...} for many functions.

\item Added the \code{clusterMNN()} function for performing MNN on cluster centroids.

\item Added \code{get.variance=} option to \code{fastMNN()} to return variance explained from PCA.
Support \code{d=NA} to skip the PCA step altogether.

\item Modified \code{correctExperiments()} to preserve non-conflicting \code{rowData()} fields.
}}

\section{Version 1.2.0}{\itemize{
\item Deprecated rotate.all= in favour of get.all.genes= in multiBatchPCA().

\item Switched BSPARAM= to use IrlbaParam(deferred=TRUE) by default in fastMNN(),
so that the default behaviour is actually fast.

\item Deprecated auto.order= in favor of merge.order= and auto.merge= in fastMNN() and mnnCorrect().
Automatic merging now detects potential tree-based merges.
Merge trees can also be specified as input.

\item Added the correctExperiments() function to cbind the original assays alongside the merged values.

\item Added the subset.row= argument to cosineNorm() for in-place subsetting.

\item Added batch= and preserve.single= arguments to multiBatchNorm().
Standardized behavior of subset.row= by adding a normalize.all= argument.

\item Added the regressBatches() function for correction via standard linear regression. 

\item Added the prop.k= argument in all MNN-related functions,
to allow the value of k to adapt asymmetrically to the size of each batch.
}}

\section{Version 1.0.0}{\itemize{
\item
New package batchelor, for batch correction of single-cell (RNA sequencing) data.
}}
