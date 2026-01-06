.class public interface abstract Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;
.super Ljava/lang/Object;
.source "IEndpointMonitorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Stub;,
        Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.zt.devicetrust.IEndpointMonitorListener"


# virtual methods
.method public abstract onEvent(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEventGeneralized(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEventSimplified(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
