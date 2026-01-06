.class public interface abstract Lcom/sec/ims/mdmi/IMdmiEventListener;
.super Ljava/lang/Object;
.source "IMdmiEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/mdmi/IMdmiEventListener$Stub;,
        Lcom/sec/ims/mdmi/IMdmiEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.mdmi.IMdmiEventListener"


# virtual methods
.method public abstract onE911StatsUpdated(JJJJJDDD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
