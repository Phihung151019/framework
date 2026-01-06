.class public interface abstract Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;
.super Ljava/lang/Object;
.source "IVendorExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/IVendorExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceNotification"
.end annotation


# virtual methods
.method public abstract onDeviceNotificationReceived(I)V
.end method

.method public abstract onVendorUciNotificationReceived(II[B)V
.end method
