.class public interface abstract Lcom/samsung/vekit/Listener/ExportStatusListener;
.super Ljava/lang/Object;
.source "ExportStatusListener.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/NativeInterfaceListener;


# virtual methods
.method public abstract onCodecReclaim(J)V
.end method

.method public abstract onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V
.end method

.method public abstract onExportCompleted()V
.end method

.method public abstract onExportPaused()V
.end method

.method public abstract onExportStarted()V
.end method
