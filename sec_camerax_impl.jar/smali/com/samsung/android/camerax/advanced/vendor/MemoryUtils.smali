.class public Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_BUFFER_POOL_SIZE:J = 0x1e000000L

.field private static final DEFAULT_MAX_RAW_BUFFER_NUM:I = 0x3

.field private static final DEVICE_MEMORY_USAGE_LEVEL:I

.field private static final DISABLE_RELEASE_FREE_BUFFERS:I

.field private static final GIGA_BYTES:J = 0x40000000L

.field private static final MEGA_BYTES:J = 0x100000L

.field private static final MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

.field private static final MEMORY_USAGE_LEVEL_FEATURE:I

.field private static final NODE_CHAIN_DEINIT_THRESHOLD_GIGA:I = 0x4

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_MEMORY_USAGE_LEVEL"

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->getFeatureInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_USAGE_LEVEL_FEATURE:I

    .line 42
    sget v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_USAGE_LEVEL_FEATURE:I

    and-int/lit8 v0, v0, 0xf

    sput v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->DEVICE_MEMORY_USAGE_LEVEL:I

    .line 43
    sget v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_USAGE_LEVEL_FEATURE:I

    and-int/lit8 v0, v0, 0x10

    shr-int/lit8 v0, v0, 0x4

    sput v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->DISABLE_RELEASE_FREE_BUFFERS:I

    .line 46
    sget v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->DEVICE_MEMORY_USAGE_LEVEL:I

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->valueOf(I)Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBufferPoolSize()I
    .locals 1

    .line 197
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->getBufferPoolSize()I

    move-result v0

    return v0
.end method

.method public static getDeviceMemoryLevel()Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;
    .locals 1

    .line 151
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    return-object v0
.end method

.method public static getMaxBufferCountOfRawImageReader()I
    .locals 1

    .line 161
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->getMaxRawBufferNum()I

    move-result v0

    return v0
.end method

.method public static getMaxBufferNumOfYuvImageReader()I
    .locals 1

    .line 170
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->getMaxYuvBufferNum()I

    move-result v0

    return v0
.end method

.method public static getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 1
    .param p0, "manager"    # Landroid/app/ActivityManager;

    .line 55
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 56
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 57
    return-object v0
.end method

.method public static isAvailableMemoryEnough(Landroid/app/ActivityManager;)Z
    .locals 6
    .param p0, "manager"    # Landroid/app/ActivityManager;

    .line 126
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 127
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 128
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 130
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 128
    const-string v4, "available memory is not enough : available %d, threshold %d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    return v1

    .line 133
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isBufferPoolAvailable(Landroid/app/ActivityManager;J)Z
    .locals 7
    .param p0, "manager"    # Landroid/app/ActivityManager;
    .param p1, "bufferPoolSize"    # J

    .line 80
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 81
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 82
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 82
    const-string v5, "available bufferPool memory is not enough : available mem %d, threshold %d, PoolSize %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v2

    .line 87
    :cond_0
    const-wide/32 v3, 0x1e000000

    cmp-long v1, v3, p1

    if-gez v1, :cond_1

    .line 88
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Exceed max buffer pool size %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v2

    .line 92
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isGreaterThan(Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;)Z
    .locals 1
    .param p0, "level"    # Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 179
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLessThan(Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;)Z
    .locals 1
    .param p0, "level"    # Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    .line 188
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v0, p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNeedDeinitSolution(Landroid/app/ActivityManager;)Z
    .locals 10
    .param p0, "manager"    # Landroid/app/ActivityManager;

    .line 102
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 103
    return v0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    .line 107
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    sget-object v2, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->MEMORY_LEVEL:Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils$MemoryLevel;->getCutOffThreshold()I

    move-result v2

    int-to-long v2, v2

    .line 109
    .local v2, "threshold":J
    const-wide/32 v4, 0x100000

    mul-long v6, v2, v4

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 110
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    iget-wide v7, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v4

    .line 113
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 110
    const-string v5, "need to deinitialize solution for memory : available mem %d MB, threshold %d MB"

    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_1
    return v0
.end method

.method public static isReleaseFreeBuffersEnabled()Z
    .locals 1

    .line 142
    sget v0, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->DISABLE_RELEASE_FREE_BUFFERS:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static needNodeChainDeinitialize(Landroid/app/ActivityManager;)Z
    .locals 5
    .param p0, "manager"    # Landroid/app/ActivityManager;

    .line 68
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->getMemoryInfo(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 69
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v3, 0x40000000

    div-long/2addr v1, v3

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
