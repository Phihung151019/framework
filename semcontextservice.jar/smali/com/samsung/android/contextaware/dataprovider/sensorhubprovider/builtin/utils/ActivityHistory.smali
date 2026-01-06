.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
.super Ljava/lang/Object;
.source "ActivityHistory.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x5a0

.field private static volatile mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;


# instance fields
.field private mBufferIndex:I

.field private mBufferSize:I

.field private final mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x5a0

    new-array v1, v0, [Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    new-instance v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory-IA;)V

    aput-object v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->initialize()V

    .line 68
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;
    .locals 2

    .line 52
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mActivityHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;

    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 1

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    .line 74
    return-void
.end method


# virtual methods
.method public erase()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->initialize()V

    .line 160
    const-string v0, "erased"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getActivityAccuracy(I)I
    .locals 3
    .param p1, "index"    # I

    .line 129
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    rem-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    return v0
.end method

.method public getActivityDuration(I)J
    .locals 3
    .param p1, "index"    # I

    .line 141
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    rem-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetduration(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    return-wide v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetduration(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityTimestamp(I)J
    .locals 3
    .param p1, "index"    # I

    .line 105
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    rem-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgettimeStamp(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgettimeStamp(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getActivityType(I)I
    .locals 3
    .param p1, "index"    # I

    .line 117
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p1

    rem-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetactivityType(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fgetactivityType(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;)I

    move-result v0

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    return v0
.end method

.method public onTimeChanged()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->erase()V

    .line 167
    return-void
.end method

.method public putActivityData(J[I[I[J)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "activityType"    # [I
    .param p4, "accuracy"    # [I
    .param p5, "duration"    # [J

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 82
    aget-wide v1, p5, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 83
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x5a0

    rem-int/2addr v1, v2

    .line 84
    .local v1, "index":I
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferIndex:I

    .line 85
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    if-ge v3, v2, :cond_0

    .line 86
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mBufferSize:I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v2, v2, v1

    invoke-static {v2, p1, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fputtimeStamp(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)V

    .line 90
    aget-wide v2, p5, v0

    add-long/2addr p1, v2

    .line 92
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v2, v2, v1

    aget v3, p3, v0

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fputactivityType(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)V

    .line 93
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v2, v2, v1

    aget v3, p4, v0

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fputaccuracy(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;I)V

    .line 94
    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory;->mHistoryData:[Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;

    aget-object v2, v2, v1

    aget-wide v3, p5, v0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;->-$$Nest$fputduration(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/ActivityHistory$HistoryData;J)V

    .line 81
    .end local v1    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
