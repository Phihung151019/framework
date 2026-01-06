.class public Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiVendorNan"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 13
    .line 14
    const-string v0, "constructor of SemWifiVendorNan called"

    .line 15
    .line 16
    const-string v1, "SemWifiVendorNan"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isStdPlusSupported()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->createWifiVendorNanMockable()Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "StdPlus is not supported"

    .line 37
    .line 38
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    .line 45
    const-string p0, "Failed to get internal ISemWifiVendorNan instance."

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method private createWifiVendorNanMockable()Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;->serviceDeclared()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SemWifiVendorNan"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Initializing SemWifiVendorNan using AIDL implementation."

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanAidlImpl;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;->serviceDeclared()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "Initializing SemWifiVendorNan using HIDL implementation."

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNanHidlImpl;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    const-string p0, "No HIDL or AIDL service available for SemWifiVendorNan."

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method private isInitializationStarted()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiVendorNan"

    .line 6
    .line 7
    const-string v0, "Internal mWifiVendorNan instance does not exist."

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;->isInitializationStarted()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method


# virtual methods
.method public initialize()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SemWifiVendorNan"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "Internal ISemWifiVendorNan instance does not exist."

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;->initialize()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    const-string p0, "Failed to init ISemWifiVendorNan, stopping startup."

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public setNanCommand(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/aware/SemWifiVendorNan;->mWifiVendorNan:Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "SemWifiVendorNan"

    .line 9
    .line 10
    const-string p1, "Internal ISemWifiVendorNan instance does not exist."

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/aware/ISemWifiVendorNan;->setNanCommand(I[B)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method
