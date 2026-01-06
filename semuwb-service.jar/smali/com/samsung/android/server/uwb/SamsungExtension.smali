.class public Lcom/samsung/android/server/uwb/SamsungExtension;
.super Ljava/lang/Object;
.source "SamsungExtension.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;,
        Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;
    }
.end annotation


# static fields
.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field private static final TAG:Ljava/lang/String; = "UwbSamsungExtension"


# instance fields
.field private final mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

.field private final mContext:Landroid/content/Context;

.field private mDeviceState:I

.field private final mEnableTask:Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

.field private final mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

.field private final mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSecCallback:Lcom/samsung/android/uwb_extras/ISecUwbCallback;

.field private mSecUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

.field private final mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

.field private mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

.field private final mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

.field private final mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

.field private final mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBigdataManager(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/bigdata/BigdataManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/uwb/SamsungExtension;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceState(Lcom/samsung/android/server/uwb/SamsungExtension;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableTask(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mEnableTask:Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInitialized(Lcom/samsung/android/server/uwb/SamsungExtension;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecCallback:Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVendorExtensionWrapper(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/uwb_extras/ISecUwbCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecCallback:Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSessionNotification(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdump(Lcom/samsung/android/server/uwb/SamsungExtension;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/SamsungExtension;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misUwbEnabled(Lcom/samsung/android/server/uwb/SamsungExtension;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->isUwbEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateDeviceState(Lcom/samsung/android/server/uwb/SamsungExtension;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension;->updateDeviceState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    iput v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    .line 106
    invoke-static {}, Lcom/samsung/android/server/uwb/log/Log;->loadDebugLog()V

    .line 108
    const-string v0, "SamsungUwbService is started"

    const/4 v1, 0x1

    const-string v2, "UwbSamsungExtension"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->setDeviceListener(Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;)V

    .line 114
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFile()Z

    .line 116
    new-instance v0, Lcom/samsung/android/server/uwb/SamsungExtension$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/SamsungExtension$1;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 136
    new-instance v0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V

    const-string v1, "semuwb_extras"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 137
    const-string v0, "addService - semuwb_extras"

    invoke-static {v2, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/SamsungExtension;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    .line 140
    new-instance v0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;Lcom/samsung/android/server/uwb/bigdata/BigdataManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    .line 141
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    .line 143
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SamsungUwbService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "uwbHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    new-instance v1, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    iget-object v3, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;)V

    iput-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    .line 147
    new-instance v1, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;-><init>(Landroid/os/Looper;Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mEnableTask:Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    .line 149
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "uwb.regulation.skip"

    const-string v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "Factory Binary"

    invoke-static {v2, v1}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/uwb/SamsungExtension$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/uwb/SamsungExtension$2;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uwb from from pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 442
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    return-void

    .line 447
    :cond_0
    monitor-enter p0

    .line 448
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/SamsungExtension;->dumpsysInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 450
    const-string v0, "\n<UWB History Log Start>"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    invoke-static {p2}, Lcom/samsung/android/server/uwb/log/Log;->printDebugLog(Ljava/io/PrintWriter;)V

    .line 452
    const-string v0, "<UWB History Log End>\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    monitor-exit p0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpFormattedFirmwareVersion(Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceInfo"    # Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    .line 496
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMajorVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 497
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMinorVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwRcVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 496
    const-string v1, "F/W Version : %02X.%02X.%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpFormattedUciVersion(Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceInfo"    # Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    .line 501
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMajorVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 502
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMinorVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenPatchVersion()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 501
    const-string v1, "UCI Version : %02X.%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpSessionEntry(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Ljava/lang/String;
    .locals 2
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uwb Session ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 508
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getServiceType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Package Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    return-object v0
.end method

.method private dumpSessionEntry(Lcom/samsung/uwb/support/data/SecUwbSessionData;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Lcom/samsung/uwb/support/data/SecUwbSessionData;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uwb Session ID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbSessionData;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbSessionData;->getSessionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    invoke-virtual {p1}, Lcom/samsung/uwb/support/data/SecUwbSessionData;->getSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    return-object v0
.end method

.method private dumpsysInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UWB State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->isUwbEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->getSecUwbDeviceInfo()Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    move-result-object v0

    .line 461
    .local v0, "secUwbDeviceInfo":Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->dumpFormattedFirmwareVersion(Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->dumpFormattedUciVersion(Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    .end local v0    # "secUwbDeviceInfo":Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nAoA CAL File Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getCalibrationFileVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const-string v0, "\n------------------------- UWB Service -------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UWB Session Count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->getSessionCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->getAllUwbSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 472
    .local v2, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->dumpSessionEntry(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    .end local v2    # "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    goto :goto_0

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->isUwbEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    const-string v0, "\n------------------------- UWB Firmware -------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->getAllUwbSessions()Lcom/samsung/uwb/support/data/SecUwbSessionList;

    move-result-object v0

    .line 479
    .local v0, "secUwbSessionList":Lcom/samsung/uwb/support/data/SecUwbSessionList;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/SecUwbSessionList;->getStatus()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 482
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/SecUwbSessionList;->getSessionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/SecUwbSessionList;->getSessionData()[Lcom/samsung/uwb/support/data/SecUwbSessionData;

    move-result-object v1

    .line 484
    .local v1, "secUwbSessionData":[Lcom/samsung/uwb/support/data/SecUwbSessionData;
    if-nez v1, :cond_3

    .line 485
    const-string v2, "SessionData is null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 487
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/SecUwbSessionList;->getSessionCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 488
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/samsung/android/server/uwb/SamsungExtension;->dumpSessionEntry(Lcom/samsung/uwb/support/data/SecUwbSessionData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 480
    .end local v1    # "secUwbSessionData":[Lcom/samsung/uwb/support/data/SecUwbSessionData;
    .end local v2    # "i":I
    :cond_4
    :goto_2
    const-string v1, "getAllUwbSessions() failed"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    .end local v0    # "secUwbSessionList":Lcom/samsung/uwb/support/data/SecUwbSessionList;
    :cond_5
    :goto_3
    return-void
.end method

.method private isUwbEnabled()Z
    .locals 3

    .line 292
    const-string v0, "UwbSamsungExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUwbEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUwbTurnedOn(I)Z
    .locals 1
    .param p1, "deviceState"    # I

    .line 230
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendMaxCountSessionBigdata(I)V
    .locals 1
    .param p1, "deviceState"    # I

    .line 234
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendBigdataForMaxSessionCount()V

    .line 237
    :cond_0
    return-void
.end method

.method private setSecUwbDeviceInfo(Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;

    .line 422
    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;->getSecUwbDeviceInfo()Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    .line 423
    return-void
.end method

.method private setTelephonyTransmitPower(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .line 521
    :try_start_0
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    .line 522
    .local v0, "phone":Lcom/android/internal/telephony/ISemTelephony;
    const-wide v1, 0x100000000L

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/ISemTelephony;->setTransmitPowerExt(JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    nop

    .end local v0    # "phone":Lcom/android/internal/telephony/ISemTelephony;
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateDeviceState(I)V
    .locals 1
    .param p1, "deviceState"    # I

    .line 206
    iget v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    if-eq v0, p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendDbDataForUwbState(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendBigdataByDeviceState(I)V

    .line 212
    iput p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    .line 214
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->isPostProcessingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->startSensorListen()V

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->setTelephonyTransmitPower(Z)V

    goto :goto_0

    .line 218
    :cond_1
    if-nez p1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->removeAllUwbSessions()V

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->stopSensorListen()V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->setTelephonyTransmitPower(Z)V

    .line 226
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension;->sendMaxCountSessionBigdata(I)V

    .line 227
    return-void
.end method


# virtual methods
.method public getAllUwbSessions()Lcom/samsung/uwb/support/data/SecUwbSessionList;
    .locals 5

    .line 400
    const-string v0, "getAllUwbSessions"

    const-string v1, "UwbSamsungExtension"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/GetAllUwbSessionsCommand;

    invoke-direct {v0}, Lcom/samsung/uwb/support/uci/cmd/GetAllUwbSessionsCommand;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->sendVendorUciMessage(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v0

    .line 404
    .local v0, "resp":[B
    new-instance v2, Lcom/samsung/uwb/support/data/SecUwbSessionList;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/data/SecUwbSessionList;-><init>([B)V

    .line 405
    .local v2, "secUwbSessionList":Lcom/samsung/uwb/support/data/SecUwbSessionList;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uwb Session List: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-object v2
.end method

.method public getDeviceInfo()V
    .locals 7

    .line 411
    const-string v0, "UwbSamsungExtension"

    const-string v1, "getDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/CoreGetDeviceInfoCommand;

    invoke-direct {v0}, Lcom/samsung/uwb/support/uci/cmd/CoreGetDeviceInfoCommand;-><init>()V

    .line 414
    .local v0, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/uwb/SamsungExtension;->sendVendorUciMessage(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v1

    .line 416
    .local v1, "resp":[B
    new-instance v2, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;

    new-instance v3, Lcom/samsung/uwb/support/uci/UciPacket;

    .line 417
    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v5

    const/4 v6, 0x2

    invoke-direct {v3, v6, v4, v5, v1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    invoke-virtual {v3}, Lcom/samsung/uwb/support/uci/UciPacket;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;-><init>([B)V

    .line 418
    .local v2, "response":Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;
    invoke-direct {p0, v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->setSecUwbDeviceInfo(Lcom/samsung/uwb/support/uci/rsp/CoreGetDeviceInfoResponse;)V

    .line 419
    return-void
.end method

.method public getSecUwbDeviceInfo()Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    .locals 2

    .line 426
    const-string v0, "UwbSamsungExtension"

    const-string v1, "getSecUwbDeviceInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/server/uwb/SamsungExtension;->getDeviceInfo()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecUwbDeviceInfo:Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    return-object v0
.end method

.method public getSessionManager()Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSessionManager:Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;

    return-object v0
.end method

.method public handleUciNotifications(BB[B)V
    .locals 5
    .param p1, "gid"    # B
    .param p2, "oid"    # B
    .param p3, "data"    # [B

    .line 253
    new-instance v0, Lcom/samsung/uwb/support/uci/UciPacket;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->parse()Lcom/samsung/uwb/support/uci/UciPacket;

    move-result-object v0

    .line 255
    .local v0, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->onRfTestNotificationReceived(Lcom/samsung/uwb/support/uci/UciPacket;)V

    goto/16 :goto_0

    .line 257
    :cond_0
    const/16 v1, 0xf

    const-string v2, "UwbSamsungExtension"

    if-ne p1, v1, :cond_8

    .line 258
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingNotification;

    if-eqz v1, :cond_1

    .line 259
    move-object v1, v0

    check-cast v1, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingNotification;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingNotification;->getSeBindingResultData()Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v1

    .line 260
    .local v1, "seBindingResultData":Lcom/samsung/uwb/support/data/ese/SeBindingResultData;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->onDoBindStatusNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeBindingResultData;)V

    .line 261
    .end local v1    # "seBindingResultData":Lcom/samsung/uwb/support/data/ese/SeBindingResultData;
    goto/16 :goto_0

    :cond_1
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingCheckNotification;

    if-eqz v1, :cond_2

    .line 262
    move-object v1, v0

    check-cast v1, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingCheckNotification;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/ntf/UwbEseBindingCheckNotification;->getSeBindingCheckResultData()Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    move-result-object v1

    .line 263
    .local v1, "seBindingCheckResultData":Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->onBindingCheckNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;)V

    .line 264
    .end local v1    # "seBindingCheckResultData":Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    goto/16 :goto_0

    :cond_2
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/UwbEseConnectivityNotification;

    if-eqz v1, :cond_3

    .line 265
    move-object v1, v0

    check-cast v1, Lcom/samsung/uwb/support/uci/ntf/UwbEseConnectivityNotification;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/ntf/UwbEseConnectivityNotification;->getSeConnectivityTestData()Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    move-result-object v1

    .line 266
    .local v1, "seConnectivityTestData":Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->onDoConnectivityTestStatusNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;)V

    .line 267
    .end local v1    # "seConnectivityTestData":Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;
    goto/16 :goto_0

    :cond_3
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/DoVcoPllCalibrationNotification;

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbFactoryManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->onDoCalibrationNotificationReceived([B)V

    goto/16 :goto_0

    .line 269
    :cond_4
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/UrskDeleteNotification;

    if-eqz v1, :cond_5

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.uwb.action.URSK_DELETE_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "urskDeleteStatusIntent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 272
    const-string v2, "com.samsung.android.dkey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 274
    const-string v2, "com.samsung.android.uwbtest"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 276
    .end local v1    # "urskDeleteStatusIntent":Landroid/content/Intent;
    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/WriteCountryCodeNotification;

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 277
    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getStatus()I

    move-result v1

    if-nez v1, :cond_6

    .line 278
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->setWriteResult(Z)V

    goto :goto_0

    .line 280
    :cond_6
    const-string v1, "Failed to Write PolicyFile"

    invoke-static {v2, v1}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mUwbScpmManager:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->setWriteResult(Z)V

    goto :goto_0

    .line 283
    :cond_7
    instance-of v1, v0, Lcom/samsung/uwb/support/uci/ntf/CccDebugNotification;

    if-eqz v1, :cond_9

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 287
    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "handleUciNotifications: Unhandled event (GID:%d, OID:%d)"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_9
    :goto_0
    return-void
.end method

.method public onDeviceNotificationReceived(I)V
    .locals 4
    .param p1, "deviceState"    # I

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceNotificationReceived - previous : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UwbSamsungExtension"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension;->isUwbTurnedOn(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mEnableTask:Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mEnableTask:Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbEnableTask;->execute()V

    goto :goto_0

    .line 176
    :cond_0
    const-string v0, "mEnableTask is null"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/uwb/SamsungExtension$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension$3;-><init>(Lcom/samsung/android/server/uwb/SamsungExtension;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void

    .line 201
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/SamsungExtension;->updateDeviceState(I)V

    .line 202
    return-void
.end method

.method public onVendorUciNotificationReceived(II[B)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "data"    # [B

    .line 241
    int-to-byte v0, p1

    int-to-byte v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/samsung/android/server/uwb/SamsungExtension;->handleUciNotifications(BB[B)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecCallback:Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mSecCallback:Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/uwb_extras/ISecUwbCallback;->onNotification(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendVendorUciMessage(Lcom/samsung/uwb/support/uci/UciPacket;)[B
    .locals 4
    .param p1, "uciPacket"    # Lcom/samsung/uwb/support/uci/UciPacket;

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungExtension;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v0

    return-object v0
.end method
