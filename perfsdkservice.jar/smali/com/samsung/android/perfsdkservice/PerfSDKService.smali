.class public Lcom/samsung/android/perfsdkservice/PerfSDKService;
.super Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;
.source "PerfSDKService.java"


# static fields
.field private static final PERFSDK_TYPE_ALIVECHECK:I = 0x6

.field private static final PERFSDK_TYPE_BOOSTLEVEL:I = 0x5

.field private static final PERFSDK_TYPE_FGAPP_CHG:I = 0x2

.field private static final PERFSDK_TYPE_FGAPP_SET:I = 0x3

.field private static final PERFSDK_TYPE_SERVICE:I = 0x1

.field private static final PERFSDK_TYPE_THERMAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PerfSDKService"


# instance fields
.field private KeyToken:Ljava/lang/String;

.field private bus_high:[I

.field private bus_low:[I

.field private client:Landroid/net/LocalSocket;

.field private cpu_high:[I

.field private cpu_low:[I

.field private gpu_high:[I

.field private gpu_low:[I

.field private in:Ljava/io/DataInputStream;

.field private mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mContext:Landroid/content/Context;

.field private mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

.field private mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private out:Ljava/io/DataOutputStream;

.field private timeout_high:I

.field private timeout_low:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .line 94
    move-object/from16 v1, p0

    const-string v0, "PerfSDKService"

    const-string v2, " "

    invoke-direct {v1}, Lcom/samsung/android/perfsdkservice/IPerfSDKService$Stub;-><init>()V

    .line 69
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    .line 74
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 75
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 76
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    .line 78
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 79
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 80
    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 81
    const/4 v3, 0x5

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    .line 82
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    .line 83
    new-array v3, v3, [I

    iput-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    .line 84
    const/4 v3, 0x3

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    .line 85
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    .line 86
    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    .line 87
    const/16 v4, 0xbb8

    iput v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_high:I

    .line 88
    const/16 v4, 0x3e8

    iput v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_low:I

    .line 96
    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    .line 98
    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 99
    .local v5, "b":Landroid/os/IBinder;
    if-eqz v5, :cond_0

    .line 100
    invoke-static {v5}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    .line 104
    :cond_0
    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_CPU_MIN"

    invoke-static {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 105
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_GPU_MIN"

    invoke-static {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 106
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v7, "PERFSDK_BUS_MIN"

    invoke-static {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 108
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v8, 0x3fd999999999999aL    # 0.4

    const v10, 0x12001001

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    aput v7, v6, v11

    .line 110
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v7, v12, v13, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    const/4 v14, 0x1

    aput v7, v6, v14

    .line 112
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    move v15, v3

    const-wide v3, 0x3fe3333333333333L    # 0.6

    invoke-virtual {v7, v3, v4, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    const/16 v16, 0x2

    aput v7, v6, v16

    .line 114
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    move/from16 v17, v14

    move/from16 v18, v15

    const-wide v14, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v7, v14, v15, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    aput v7, v6, v18

    .line 116
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v14, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v7, v14, v15, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    const/4 v10, 0x4

    aput v7, v6, v10

    .line 119
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v11

    aput v7, v6, v11

    .line 120
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v17

    aput v7, v6, v17

    .line 121
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v16

    aput v7, v6, v16

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPU levels : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v16

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    move/from16 v19, v10

    const v10, 0x20001001

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    aput v7, v6, v11

    .line 126
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v7, v12, v13, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v7

    aput v7, v6, v17

    .line 128
    iget-object v6, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v7, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v7, v3, v4, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v3

    aput v3, v6, v16

    .line 130
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-virtual {v4, v6, v7, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v18

    .line 132
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mGpuFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, v14, v15, v10, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v19

    .line 134
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v11

    aput v4, v3, v11

    .line 135
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v17

    aput v4, v3, v17

    .line 136
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v16

    aput v4, v3, v16

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPU levels : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const v6, 0x30001001

    invoke-virtual {v4, v8, v9, v6, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v11

    .line 141
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4, v12, v13, v6, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v17

    .line 143
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v7, 0x3fe199999999999aL    # 0.55

    invoke-virtual {v4, v7, v8, v6, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v16

    .line 145
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    invoke-virtual {v4, v7, v8, v6, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v18

    .line 147
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mBusFreqHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v7, v8, v6, v11}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(DII)I

    move-result v4

    aput v4, v3, v19

    .line 149
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v11

    aput v4, v3, v11

    .line 150
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v17

    aput v4, v3, v17

    .line 151
    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v16

    aput v4, v3, v16

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUS levels : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v3, v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getFGPkgName()Ljava/lang/String;
    .locals 5

    .line 165
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 166
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 170
    const-string v3, "PerfSDKService"

    const-string v4, "checkForegroundPackagename in tasks.size() <= 0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v0

    .line 174
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v0, "packageName":Ljava/lang/String;
    return-object v0

    .line 178
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 180
    return-object v0
.end method

.method private sendBigdata(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v0, "builder":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "PACK"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "custom":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 208
    :cond_0
    goto :goto_0

    .line 206
    .end local v1    # "custom":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    move-object v1, v2

    .line 210
    .local v1, "custom":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    const-string v2, "SPSU"

    .line 212
    .local v2, "feature":Ljava/lang/String;
    const-string v3, "1"

    .line 214
    .local v3, "logVersion":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->sendToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .end local v2    # "feature":Ljava/lang/String;
    .end local v3    # "logVersion":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private sendToHqm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "logVersion"    # Ljava/lang/String;
    .param p3, "custom"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/SemHqmManager;

    .line 186
    .local v1, "hqm":Landroid/os/SemHqmManager;
    if-nez v1, :cond_0

    .line 187
    const-string v0, "PerfSDKService"

    const-string v2, "hqm service not found"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_0
    const-string v8, ""

    const-string v10, ""

    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v5, "ph"

    const-string v7, "sec"

    move-object v4, p1

    move-object v6, p2

    move-object v9, p3

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "logVersion":Ljava/lang/String;
    .end local p3    # "custom":Ljava/lang/String;
    .local v4, "feature":Ljava/lang/String;
    .local v6, "logVersion":Ljava/lang/String;
    .local v9, "custom":Ljava/lang/String;
    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    return-void
.end method


# virtual methods
.method public connectionRequest()I
    .locals 5

    .line 456
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 459
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 460
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 461
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 462
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 463
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 470
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    const-string v0, "PerfSDKService"

    const-string v2, "Start to connect to perfsdkserver"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 472
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "perfsdkserver"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 474
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 475
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    nop

    .line 493
    const/4 v0, 0x0

    return v0

    .line 476
    :catch_1
    move-exception v0

    .line 477
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 481
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 482
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 483
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 484
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 485
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 488
    goto :goto_1

    .line 486
    :catch_2
    move-exception v2

    .line 487
    .local v2, "e1":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 490
    .end local v2    # "e1":Ljava/lang/Exception;
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method public getAllowedPkgName()Ljava/lang/String;
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PERFSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangedForegroundPackagename()Ljava/lang/String;
    .locals 1

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->getFGPkgName()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "FGPkgname":Ljava/lang/String;
    return-object v0
.end method

.method public getForegroundPackagename()Ljava/lang/String;
    .locals 1

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->getFGPkgName()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "FGPkgname":Ljava/lang/String;
    return-object v0
.end method

.method public getHighBoostingLevel()[I
    .locals 5

    .line 316
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 320
    .local v0, "boostLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 321
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 322
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 325
    const/4 v1, 0x3

    iget v3, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_high:I

    aput v3, v0, v1

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 329
    add-int/lit8 v3, v1, 0x6

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 330
    add-int/lit8 v3, v1, 0xb

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 331
    add-int/lit8 v3, v1, 0x10

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_high:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-object v0
.end method

.method public getLowBoostingLevel()[I
    .locals 5

    .line 339
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 343
    .local v0, "boostLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 344
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 345
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 348
    iget v1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->timeout_low:I

    aput v1, v0, v2

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 352
    add-int/lit8 v3, v1, 0x6

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->cpu_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 353
    add-int/lit8 v3, v1, 0xb

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->gpu_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 354
    add-int/lit8 v3, v1, 0x10

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->bus_low:[I

    aget v4, v4, v1

    aput v4, v0, v3

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-object v0
.end method

.method public getThermalTable()[I
    .locals 7

    .line 362
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 364
    .local v0, "ThermalLevel":[I
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 365
    aput v1, v0, v2

    .line 366
    const/4 v3, 0x2

    const/16 v4, 0x1d6

    aput v4, v0, v3

    .line 367
    const/4 v3, 0x3

    const/16 v5, 0x1e0

    aput v5, v0, v3

    .line 368
    const/4 v3, 0x4

    const/16 v6, 0x1f4

    aput v6, v0, v3

    .line 370
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 371
    const/4 v2, 0x6

    aput v1, v0, v2

    .line 372
    const/4 v1, 0x7

    aput v4, v0, v1

    .line 373
    const/16 v1, 0x8

    aput v5, v0, v1

    .line 374
    const/16 v1, 0x9

    aput v6, v0, v1

    .line 376
    return-object v0
.end method

.method public initPerfSDK(Ljava/lang/String;)I
    .locals 7
    .param p1, "serverName"    # Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    .line 224
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 225
    .local v1, "uid":I
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "FGPkgname":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_2

    .line 231
    :cond_0
    const-string v4, "PerfSDKService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0, v2}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->sendBigdata(Ljava/lang/String;)V

    .line 236
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    if-nez v4, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->connectionRequest()I

    move-result v4

    if-gez v4, :cond_1

    .line 241
    monitor-exit p0

    return v3

    .line 247
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 248
    .local v4, "req_cmd":I
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 249
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 252
    .local v5, "bytes_out":[B
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 253
    .end local v4    # "req_cmd":I
    .local v6, "req_cmd":I
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 254
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 255
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 257
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 258
    .end local v5    # "bytes_out":[B
    .local v4, "bytes_out":[B
    array-length v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 259
    .end local v6    # "req_cmd":I
    .local v5, "req_cmd":I
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 260
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 261
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    .line 264
    .end local v5    # "req_cmd":I
    .restart local v6    # "req_cmd":I
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 265
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 267
    iget-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    .end local v0    # "ret":I
    .end local v6    # "req_cmd":I
    .local v5, "ret":I
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    nop

    .line 291
    const-string v0, "PerfSDKService"

    const-string v3, "Transferring SDK\'server info to perfsdkserver"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v5

    .line 268
    .end local v4    # "bytes_out":[B
    :catchall_0
    move-exception v4

    move v0, v5

    goto :goto_0

    .end local v5    # "ret":I
    .restart local v0    # "ret":I
    :catchall_1
    move-exception v4

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "ret":I
    .end local v1    # "uid":I
    .end local v2    # "FGPkgname":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/perfsdkservice/PerfSDKService;
    .end local p1    # "serverName":Ljava/lang/String;
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 269
    .restart local v0    # "ret":I
    .restart local v1    # "uid":I
    .restart local v2    # "FGPkgname":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/perfsdkservice/PerfSDKService;
    .restart local p1    # "serverName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    if-eqz v6, :cond_2

    .line 272
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 273
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 275
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    if-eqz v6, :cond_3

    .line 276
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 277
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->in:Ljava/io/DataInputStream;

    .line 279
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    if-eqz v6, :cond_4

    .line 280
    iget-object v6, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 281
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->out:Ljava/io/DataOutputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 285
    :cond_4
    goto :goto_1

    .line 283
    :catch_1
    move-exception v6

    .line 284
    .local v6, "e1":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->client:Landroid/net/LocalSocket;

    .line 287
    .end local v6    # "e1":Ljava/lang/Exception;
    :goto_1
    const-string v5, "PerfSDKService"

    const-string v6, "Fail to transfer SDK\'server info to perfsdkserver"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v3

    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    const-string v4, "PerfSDKService"

    const-string v5, "Fail to get Package name"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v3
.end method

.method public removeSessionKey(Ljava/lang/String;)I
    .locals 3
    .param p1, "sessionKey"    # Ljava/lang/String;

    .line 432
    const-string v0, "PerfSDKService"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 438
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 439
    .local v1, "uid":I
    iget-object v2, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v2, v1}, Landroid/os/ICustomFrequencyManager;->removeDvfsLockAllowedUid(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    nop

    .end local v1    # "uid":I
    goto :goto_1

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "NumberFormatException"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 440
    :catch_2
    move-exception v1

    .line 441
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "fail to disable siop maxlock"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 447
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    .line 449
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Key is not Correct : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, -0x1

    return v0
.end method

.method public setSessionKey(Ljava/lang/String;)I
    .locals 7
    .param p1, "sessionKey"    # Ljava/lang/String;

    .line 395
    const/4 v0, -0x1

    const-string v1, "PerfSDKService"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    move-object v2, p1

    .line 405
    .local v2, "tmpKey":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 406
    .local v3, "uid":I
    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->mCustomFrequencyManager:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v4, v3}, Landroid/os/ICustomFrequencyManager;->addDvfsLockAllowedUid(I)I

    move-result v4

    .line 407
    .local v4, "retUid":I
    if-lez v4, :cond_1

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v3    # "uid":I
    .end local v4    # "retUid":I
    :cond_1
    nop

    .line 421
    iget-object v3, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz v3, :cond_2

    .line 423
    const/4 v0, 0x0

    return v0

    .line 426
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to set SessionKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService;->KeyToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return v0

    .line 416
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "NumberFormatException"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v0

    .line 413
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 414
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "NullPointerException"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v0

    .line 410
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v3

    .line 411
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "fail to disable siop maxlock"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v0

    .line 396
    .end local v2    # "tmpKey":Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session Key is not Correct : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v0
.end method
