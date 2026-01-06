.class abstract Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method getHistoryData()V
    .locals 0

    .line 55
    return-void
.end method

.method register()Z
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method requestToUpdate()V
    .locals 0

    .line 47
    return-void
.end method

.method setLoggingMode(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 51
    return-void
.end method

.method setProperty(IDD)V
    .locals 0
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 43
    return-void
.end method

.method unregister()V
    .locals 0

    .line 39
    return-void
.end method
