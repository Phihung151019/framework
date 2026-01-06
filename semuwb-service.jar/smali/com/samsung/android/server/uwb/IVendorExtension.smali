.class public interface abstract Lcom/samsung/android/server/uwb/IVendorExtension;
.super Ljava/lang/Object;
.source "IVendorExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;,
        Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;,
        Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;
    }
.end annotation


# virtual methods
.method public abstract getSessionToken(I)I
.end method

.method public abstract getSpecificationInfo()Lcom/google/uwb/support/generic/GenericSpecificationParams;
.end method

.method public abstract sendVendorUciMessage(II[B)[B
.end method
