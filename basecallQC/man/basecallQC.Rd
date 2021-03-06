% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allClasses.R
\docType{class}
\name{basecallQC-class}
\alias{basecallQC-class}
\alias{basecallQC}
\alias{basecallQC-basecallQC}
\alias{basecallQC}
\title{The basecallQC object.}
\usage{
basecallQC(bcl2fastqparams, RunMetaData = NULL, sampleSheet = NULL,
  doFQMetric = FALSE)
}
\arguments{
\item{bcl2fastqparams}{A BCL2FastQparams object as created by setBCL2FastQparams.}

\item{RunMetaData}{Any run metadata to attach (data.frame)}

\item{sampleSheet}{The samplesheet for basecalling}

\item{doFQMetric}{TRUE or FALSE. Perform ShortRead FastQ quality assessment
using ShortRead's qa and report function}
}
\value{
A basecallQC object.

basecallQC a basecallQC object
}
\description{
Objects and methods to handle Illumina basecalling/demultiplexing
inputs and output files.
Provides sample sheet cleanup, basecall command and
summary QC statistics for basecalling/demultiplexing.

The basecallQC function is a constructor for basecallQC objects.
}
\examples{
fileLocations <- system.file("extdata",package="basecallQC")
runXML <- dir(fileLocations,pattern="runParameters.xml",full.names=TRUE)
config <- dir(fileLocations,pattern="config.ini",full.names=TRUE)
sampleSheet <- dir(fileLocations,pattern="*\\\\.csv",full.names=TRUE)
outDir <- file.path(fileLocations,"Runs/161105_D00467_0205_AC9L0AANXX/C9L0AANXX/")
bcl2fastqparams <- setBCL2FastQparams(runXML,config,runDir=getwd(),outDir,verbose=FALSE)
bclQC <- basecallQC(bcl2fastqparams,RunMetaData=NULL,sampleSheet)
}
