.class public interface abstract Lcom/sec/ims/cmc/ICmcCallEventListener;
.super Ljava/lang/Object;
.source "ICmcCallEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/ICmcCallEventListener$Stub;,
        Lcom/sec/ims/cmc/ICmcCallEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.cmc.ICmcCallEventListener"


# virtual methods
.method public abstract onCallEnded(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallError(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallEstablished(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallHeld(Lcom/sec/ims/cmc/CmcCallEventInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallRecording(Lcom/sec/ims/cmc/CmcRecordEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallResumed(Lcom/sec/ims/cmc/CmcCallEventInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCallRingingBack(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCalling(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEarlyMediaStarted(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onIncomingCall(Lcom/sec/ims/cmc/CmcCallEventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
