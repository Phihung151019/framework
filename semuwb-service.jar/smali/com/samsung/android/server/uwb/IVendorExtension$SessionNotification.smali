.class public interface abstract Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
.super Ljava/lang/Object;
.source "IVendorExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/IVendorExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionNotification"
.end annotation


# virtual methods
.method public abstract onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
.end method

.method public abstract onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V
.end method

.method public abstract onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
.end method
