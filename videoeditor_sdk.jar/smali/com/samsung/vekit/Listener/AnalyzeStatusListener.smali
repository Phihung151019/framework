.class public interface abstract Lcom/samsung/vekit/Listener/AnalyzeStatusListener;
.super Ljava/lang/Object;
.source "AnalyzeStatusListener.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/NativeInterfaceListener;


# virtual methods
.method public abstract onAnalyzeCompleted()V
.end method

.method public abstract onAnalyzeFailed()V
.end method

.method public abstract onAnalyzePaused()V
.end method

.method public abstract onAnalyzeResumed()V
.end method

.method public abstract onAnalyzeStarted()V
.end method

.method public abstract onAnalyzeStopped()V
.end method

.method public abstract onSolutionError(Lcom/samsung/vekit/Common/Type/AnalyzeType;Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;)V
.end method

.method public abstract onSolutionLoaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method

.method public abstract onSolutionUnloaded(Lcom/samsung/vekit/Common/Type/AnalyzeType;)V
.end method
