.class public final Lcom/samsung/android/vexfwk/service/VexFwkServiceManager;
.super Ljava/lang/Object;
.source "VexFwkServiceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Landroid/os/IBinder;)V
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 15
    const-string v0, "com.samsung.android.vexfwk.service"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 17
    return-void
.end method
