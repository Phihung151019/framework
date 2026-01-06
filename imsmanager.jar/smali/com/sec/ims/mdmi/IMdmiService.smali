.class public interface abstract Lcom/sec/ims/mdmi/IMdmiService;
.super Ljava/lang/Object;
.source "IMdmiService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/mdmi/IMdmiService$Stub;,
        Lcom/sec/ims/mdmi/IMdmiService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.mdmi.IMdmiService"


# virtual methods
.method public abstract registerMdmiEventListener(Lcom/sec/ims/mdmi/IMdmiEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
