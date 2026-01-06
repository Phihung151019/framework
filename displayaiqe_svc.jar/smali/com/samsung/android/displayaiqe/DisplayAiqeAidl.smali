.class public final Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;
.super Ljava/lang/Object;
.source "DisplayAiqeAidl.java"

# interfaces
.implements Lcom/samsung/android/displayaiqe/DisplayAiqeHal;


# static fields
.field private static final ANDROID_UI_ISURFACE_COMPOSER:Ljava/lang/String; = "android.ui.ISurfaceComposer"

.field private static final DISPLAY_AIQE_AIDL_SERVICE:Ljava/lang/String; = "vendor.qti.hardware.display.aiqe.IDisplayAiqe/default"

.field private static final DISPLAY_NAME_NODE:Ljava/lang/String; = "/sys/module/msm_drm/parameters/dsi_display"

.field private static final SURFACE_FLINGER_SERVICE:Ljava/lang/String; = "SurfaceFlinger"

.field private static final TAG:Ljava/lang/String; = "DisplayAiqeAidl"

.field private static final TRANSACT_CODE_SET_MDNIE_MODE:I = 0x478


# instance fields
.field private displaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mASCR_SKIN:I

.field private mBinder:Landroid/os/IBinder;

.field private mBlueLightFilterLevel:I

.field private mBlueLightFilterMode:Z

.field private mByPassMode:Z

.field private mContentMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurInternalDimmingFrame:I

.field private mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;

.field private mEnvironmentAdaptiveDisplayLevel:I

.field private mEnvironmentAdaptiveDisplayMode:Z

.field private mExtraDimMode:Z

.field private mGC_HIGH:I

.field private mGC_LOW:I

.field private mHighBrightnessLevel:I

.field private mHighBrightnessMode:Z

.field private mHighDynamicRangeMode:Z

.field private mInternalDimmingFrame:I

.field private mLinearSkinMode:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mMainBlueOffset:I

.field private mMainGreeOffset:I

.field private mMainRedOffset:I

.field private mNaturalMode:Ljava/lang/String;

.field private mNaturalModeVersion:I

.field private mPrevmDNIeMode:Ljava/lang/String;

.field private mPrevmDNIeModeSub:Ljava/lang/String;

.field private mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

.field private mQCMdnieOn:Z

.field private mScreenMode:Ljava/lang/String;

.field private mSubBlueOffset:I

.field private mSubGreenOffset:I

.field private mSubRedOffset:I

.field private mVividnessMode:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;Landroid/content/Context;)V
    .locals 3
    .param p1, "displayAiqeManager"    # Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLock:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mQCMdnieOn:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mByPassMode:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mExtraDimMode:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighDynamicRangeMode:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterMode:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessMode:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mVividnessMode:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLowPowerMode:Z

    .line 69
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    .line 71
    const/16 v1, 0x25

    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    .line 72
    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mCurInternalDimmingFrame:I

    .line 74
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mASCR_SKIN:I

    .line 75
    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    .line 76
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    .line 85
    const-string v1, "VIVID"

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    .line 86
    const-string v1, "UI"

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 87
    const-string v1, "DM"

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalMode:Ljava/lang/String;

    .line 88
    const-string v1, "OFF_OFF"

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeMode:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeModeSub:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mDisplayAiqeManager:Lcom/samsung/android/displayaiqe/DisplayAiqeManagerService;

    .line 139
    iput-object p2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_LCD_CONFIG_NATURAL_MODE_TYPE"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    .line 141
    return-void
.end method

.method private connectToProxy()V
    .locals 4

    .line 102
    const-string v0, "DisplayAiqeAidl"

    const-string v1, "connectToProxy: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v1, :cond_0

    .line 106
    monitor-exit v0

    return-void

    .line 108
    :cond_0
    const-string v1, "DisplayAiqeAidl"

    const-string v2, "connectToProxy: mProxy is null."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    const-string v1, "vendor.qti.hardware.display.aiqe.IDisplayAiqe/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBinder:Landroid/os/IBinder;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "DisplayAiqeAidl"

    const-string v2, "connectToProxy: get mBinder successfully"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBinder:Landroid/os/IBinder;

    invoke-static {v1}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    .line 116
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBinder:Landroid/os/IBinder;

    new-instance v2, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_1
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "DisplayAiqeAidl"

    const-string v3, "connectToProxy: Display AIQE AIDL hal service not responding."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "DisplayAiqeAidl"

    const-string v3, "connectToProxy: Display AIQE AIDL hal service not found. Did the service fail to start?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    nop

    .line 124
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static isServicePresent()Z
    .locals 3

    .line 129
    :try_start_0
    const-string v0, "vendor.qti.hardware.display.aiqe.IDisplayAiqe/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "DisplayAiqeAidl"

    const-string v2, "connectToProxy: Display AIQE Aidl hal service not found."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getContentMode()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContentMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoprValue()I
    .locals 6

    .line 501
    const-string v0, "DisplayAiqeAidl"

    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 505
    :try_start_0
    const-string v1, "getCoprValue : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    invoke-interface {v1, v2}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->getCoprStats(I)[I

    move-result-object v1

    .line 507
    .local v1, "arr":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v3    # "i":I
    :cond_0
    array-length v3, v1

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 510
    const-string v3, "%08x"

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 512
    :cond_1
    return v2

    .line 513
    .end local v1    # "arr":[I
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "getCoprValue: Exception occured."

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return v2
.end method

.method public getDisplayService()Z
    .locals 2

    .line 494
    const-string v0, "DisplayAiqeAidl"

    const-string v1, "getDisplayService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->displaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public getPanelName(I)Ljava/lang/String;
    .locals 10
    .param p1, "displayId"    # I

    .line 584
    const-string v0, "DisplayAiqeAidl"

    const-string v1, "FileReader Close IOException : "

    const-string v2, "BufferedReader Close IOException : "

    const/4 v3, 0x0

    .line 585
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 586
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 587
    .local v5, "str":Ljava/lang/String;
    const/4 v6, 0x0

    .line 589
    .local v6, "flag":I
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPanelName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/sys/module/msm_drm/parameters/dsi_display"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 591
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v7

    .line 592
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    .line 597
    nop

    .line 598
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 602
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 605
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 606
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 610
    :cond_0
    :goto_1
    goto :goto_5

    .line 608
    :catch_1
    move-exception v0

    .line 609
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 596
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 593
    :catch_2
    move-exception v7

    .line 594
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "getPanelName: Exception occured."

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 597
    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_1

    .line 598
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 600
    :catch_3
    move-exception v0

    .line 601
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 602
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 605
    :goto_4
    if-eqz v3, :cond_0

    .line 606
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 608
    :catch_4
    move-exception v0

    .line 609
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 612
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v5, :cond_2

    .line 613
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 615
    :cond_2
    return-object v5

    .line 597
    :goto_6
    if-eqz v4, :cond_3

    .line 598
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 600
    :catch_5
    move-exception v7

    .line 601
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 602
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3
    :goto_7
    nop

    .line 605
    :goto_8
    if-eqz v3, :cond_4

    .line 606
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    .line 608
    :catch_6
    move-exception v2

    .line 609
    .local v2, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 610
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :goto_9
    nop

    .line 611
    :goto_a
    throw v0
.end method

.method public mdnieUpdate(Ljava/lang/String;)V
    .locals 16
    .param p1, "mode"    # Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mdnieUpdate function -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mNaturalModeVersion : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisplayAiqeAidl"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mByPassMode:Z

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "SET_MDNIE_MODE:BYPASS_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 285
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessMode:Z

    const-string v3, ";SET_MDNIE_ASCR_WIDE:EAD_MODE:NATURAL:"

    const-string v4, ";SET_MDNIE_ASCR_SKIN:"

    const-string v5, ";SET_MDNIE_WRGB:"

    const/4 v6, -0x1

    const-string v7, ";SET_MDNIE_ASCR_WIDE:EAD_MODE:VIVID:"

    const-string v8, "NATURAL"

    const-string v9, "VIVID"

    const/4 v10, 0x3

    const-string v11, ":"

    const-string v12, ";SET_MDNIE_GC:"

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mExtraDimMode:Z

    if-nez v1, :cond_9

    .line 286
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterMode:Z

    const-string v13, "SET_MDNIE_MODE:HBM_MODE:"

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    if-nez v1, :cond_1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainRedOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainGreeOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainBlueOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mASCR_SKIN:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 289
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterMode:Z

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v9, :cond_3

    .line 291
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_2

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 294
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";SET_MDNIE_ASCR_WIDE:BLF_MODE:VIVID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 296
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v8, :cond_18

    .line 297
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_4

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 300
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";SET_MDNIE_ASCR_WIDE:BLF_MODE:NATURAL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 304
    :cond_5
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    if-eq v1, v6, :cond_18

    .line 305
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v9, :cond_7

    .line 306
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_6

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 309
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 311
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v8, :cond_18

    .line 312
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_8

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 315
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 321
    :cond_9
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterMode:Z

    const-string v13, "SET_MDNIE_MODE:COLOR_MODE;SET_MDNIE_ASCR_WIDE:ND_MODE:2"

    const-string v14, "SET_MDNIE_MODE:COLOR_MODE;SET_MDNIE_ASCR_WIDE:ND_MODE:1"

    if-eqz v1, :cond_f

    .line 322
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    const-string v3, "SET_MDNIE_MODE:COLOR_MODE;SET_MDNIE_ASCR_WIDE:EC_MODE:"

    if-ne v1, v9, :cond_c

    .line 323
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_b

    .line 324
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    if-nez v1, :cond_a

    .line 325
    invoke-virtual {v0, v14}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 326
    :cond_a
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    if-lez v1, :cond_18

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 330
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_MDNIE_MODE:BLF_MODE;SET_MDNIE_ASCR_WIDE:BLF_MODE:VIVID:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 332
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v8, :cond_18

    .line 333
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v1, v10, :cond_e

    .line 334
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    if-nez v1, :cond_d

    .line 335
    invoke-virtual {v0, v13}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 336
    :cond_d
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    if-lez v1, :cond_18

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 340
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_MDNIE_MODE:BLF_MODE;SET_MDNIE_ASCR_WIDE:BLF_MODE:NATURAL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 343
    :cond_f
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighDynamicRangeMode:Z

    if-eqz v1, :cond_10

    .line 344
    const-string v1, "SET_MDNIE_MODE:HDR_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 346
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    const-string v15, ";SET_MDNIE_LINEAR_SKIN:"

    const-string v10, "SET_MDNIE_MODE:"

    if-ne v1, v9, :cond_15

    .line 347
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    if-eqz v1, :cond_14

    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    if-eq v1, v6, :cond_14

    .line 348
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_11

    .line 349
    invoke-virtual {v0, v14}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 350
    :cond_11
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_12

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 352
    :cond_12
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":NATURAL_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 355
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 358
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainRedOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainGreeOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainBlueOffset:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mASCR_SKIN:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 361
    :cond_15
    iget-object v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    if-ne v1, v8, :cond_18

    .line 362
    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_16

    .line 363
    invoke-virtual {v0, v13}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto :goto_0

    .line 365
    :cond_16
    iget-boolean v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    const-string v4, "_"

    if-eqz v1, :cond_17

    iget v1, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    if-eq v1, v6, :cond_17

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalMode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    goto :goto_0

    .line 368
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieMode(Ljava/lang/String;)Z

    .line 373
    :cond_18
    :goto_0
    return-void
.end method

.method public sendMdnieModeToSurfaceFlinger(I)Z
    .locals 6
    .param p1, "mode"    # I

    .line 446
    const-string v0, "DisplayAiqeAidl"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 447
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 448
    const-string v3, "sendMdnieModeToSurfaceFlinger: Failed to get SurfaceFlinger service."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v1

    .line 452
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 453
    .local v3, "data":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/16 v4, 0x478

    const/4 v5, 0x0

    invoke-interface {v2, v4, v3, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 456
    const-string v4, "sendMdnieModeToSurfaceFlinger: Failed to transact SurfaceFlinger"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 458
    return v1

    .line 461
    :cond_1
    const-string v4, "sendMdnieModeToSurfaceFlinger: send mdnie mode to SurfaceFlinger successfully."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/4 v0, 0x1

    return v0

    .line 463
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    .end local v3    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendMdnieModeToSurfaceFlinger: Exception occured."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public serviceDied()V
    .locals 2

    .line 94
    const-string v0, "DisplayAiqeAidl"

    const-string v1, "Display AIQE AIDL hal service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setABCMode(ILjava/lang/String;)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .line 523
    const-string v0, "DisplayAiqeAidl"

    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 525
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setABCMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setABCMode(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v0, 0x1

    return v0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCMode: Exception occured."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setABCReconfig(I)Z
    .locals 3
    .param p1, "displayId"    # I

    .line 555
    const-string v0, "DisplayAiqeAidl"

    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 557
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v1, :cond_0

    .line 559
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setABCReconfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    invoke-interface {v1, p1}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setABCReconfig(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    const/4 v0, 0x1

    return v0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCReconfig: Exception occured."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setABCState(II)Z
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .line 539
    const-string v0, "DisplayAiqeAidl"

    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 541
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v1, :cond_0

    .line 543
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setABCState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setABCState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    const/4 v0, 0x1

    return v0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setABCState: Exception occured."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBlueLightFilterMode(ZI)Z
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "level"    # I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBlueLightFilterMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-boolean p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterMode:Z

    .line 179
    iput p2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mBlueLightFilterLevel:I

    .line 180
    const-string v0, "BlueLightFilterMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setByPassMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setByPassMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mByPassMode:Z

    .line 147
    const-string v0, "ByPassMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public setContentMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 186
    const-string v0, "UI"

    packed-switch p1, :pswitch_data_0

    .line 215
    :pswitch_0
    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    goto :goto_0

    .line 212
    :pswitch_1
    const-string v0, "VIDEO_BRIGHTNESS_THIRD"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 213
    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "VIDEO_BRIGHTNESS"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 210
    goto :goto_0

    .line 206
    :pswitch_3
    const-string v0, "EMAIL"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 207
    goto :goto_0

    .line 203
    :pswitch_4
    const-string v0, "EBOOK"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 204
    goto :goto_0

    .line 200
    :pswitch_5
    const-string v0, "BROWSER"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 201
    goto :goto_0

    .line 197
    :pswitch_6
    const-string v0, "GALLERY"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 198
    goto :goto_0

    .line 194
    :pswitch_7
    const-string v0, "CAMERA"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 195
    goto :goto_0

    .line 191
    :pswitch_8
    const-string v0, "VIDEO"

    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 192
    goto :goto_0

    .line 188
    :pswitch_9
    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    .line 189
    nop

    .line 218
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContentMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mContentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "ContentMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setEnvironmentAdaptiveDisplayLevel(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnvironmentAdaptiveDisplayLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    .line 267
    const-string v0, "setEnvironmentAdaptiveDisplayLevel"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public setEnvironmentAdaptiveDisplayMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 254
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    .line 255
    iget-boolean v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    if-nez v1, :cond_1

    .line 256
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayLevel:I

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnvironmentAdaptiveDisplayMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mEnvironmentAdaptiveDisplayMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayAiqeAidl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "EnvironmentAdaptiveDisplayMode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 260
    return v0
.end method

.method public setExtraDimMode(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtraDimMode : level - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mExtraDimMode:Z

    .line 155
    const-string v1, "ExtraDimMode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 156
    return v0
.end method

.method public setHighBrightnessMode(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighBrightnessMode : index - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessMode:Z

    .line 275
    iput p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighBrightnessLevel:I

    .line 276
    const-string v1, "HighBrightnessMode"

    invoke-virtual {p0, v1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 277
    return v0
.end method

.method public setHighDynamicRangeMode(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighDynamicRangeMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-boolean p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mHighDynamicRangeMode:Z

    .line 163
    const-string v0, "HighDynamicRangeMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public setInternalDimmingFrame(I)Z
    .locals 2
    .param p1, "count"    # I

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalDimmingFrame : count - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iput p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public setLinearSkinMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLinearSkinMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mLinearSkinMode:Ljava/lang/String;

    .line 481
    const-string v0, "LinearSkinMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public setMdnieMode(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mode"    # Ljava/lang/String;

    .line 377
    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdnieMode : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDNIeModeUpdate -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeMode:Ljava/lang/String;

    .line 384
    const-string v2, "HBM_MODE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mCurInternalDimmingFrame:I

    iget v3, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    if-eq v2, v3, :cond_1

    .line 386
    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->sendMdnieModeToSurfaceFlinger(I)Z

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMdnieModeToSurfaceFlinger("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mInternalDimmingFrame:I

    iput v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mCurInternalDimmingFrame:I

    goto :goto_0

    .line 391
    :cond_0
    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mCurInternalDimmingFrame:I

    if-eqz v2, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->sendMdnieModeToSurfaceFlinger(I)Z

    .line 393
    const-string v2, "sendMdnieModeToSurfaceFlinger(0)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mCurInternalDimmingFrame:I

    .line 398
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v2, :cond_5

    .line 400
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mQCMdnieOn:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 401
    const-string v2, "setMdnieMode : first time after booting."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    const-string v4, "Mdnie:On:Primary"

    invoke-interface {v2, v4}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setMdnieMode(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    const-string v4, "Mdnie:On:Secondary"

    invoke-interface {v2, v4}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setMdnieMode(Ljava/lang/String;)V

    .line 404
    iput-boolean v3, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mQCMdnieOn:Z

    .line 406
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->setMdnieModeSub(Ljava/lang/String;)Z

    .line 407
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mdnie:SetParams:Primary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setMdnieMode(Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->displaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_4

    .line 409
    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalModeVersion:I

    if-ne v2, v3, :cond_3

    .line 410
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->displaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->updateGlutMode(Ljava/lang/String;)V

    .line 412
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->displaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->updateQdcmMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_4
    return v3

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMdnieMode: Exception occured."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    return v0
.end method

.method public setMdnieModeSub(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->connectToProxy()V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMdnieModeSub : mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeModeSub:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDNIeModeUpdateSub -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mPrevmDNIeModeSub:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    if-eqz v0, :cond_0

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mProxy:Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mdnie:SetParams:Secondary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lvendor/qti/hardware/display/aiqe/IDisplayAiqe;->setMdnieMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v0, 0x1

    return v0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setMdnieMode: Exception occured."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNaturalMode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaturalMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput-object p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mNaturalMode:Ljava/lang/String;

    .line 473
    const-string v0, "setNaturalMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public setScreenMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 169
    if-nez p1, :cond_0

    const-string v0, "NATURAL"

    goto :goto_0

    :cond_0
    const-string v0, "VIVID"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mScreenMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "ScreenMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public setVividnessMode(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 231
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mASCR_SKIN:I

    .line 232
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    .line 233
    iget v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVividnessMode : index - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ascr_skin("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mASCR_SKIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") gc_high("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_HIGH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") gc_low("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mGC_LOW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v0, "VividnessMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public setWhiteBalanceMode(IIIIII)Z
    .locals 3
    .param p1, "m_r"    # I
    .param p2, "m_g"    # I
    .param p3, "m_b"    # I
    .param p4, "s_r"    # I
    .param p5, "s_g"    # I
    .param p6, "s_b"    # I

    .line 241
    iput p1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainRedOffset:I

    .line 242
    iput p2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainGreeOffset:I

    .line 243
    iput p3, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainBlueOffset:I

    .line 244
    iput p4, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubRedOffset:I

    .line 245
    iput p5, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubGreenOffset:I

    .line 246
    iput p6, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubBlueOffset:I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWhiteBalanceMode : Main RGB offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainRedOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainGreeOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mMainBlueOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") , Sub RGB offset ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubRedOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubGreenOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mSubBlueOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayAiqeAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "WhiteBalanceMode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/displayaiqe/DisplayAiqeAidl;->mdnieUpdate(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    return v0
.end method
