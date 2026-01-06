.class public Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "SensorStatusCheckImpl.java"


# static fields
.field private static final LAST_EVENT_BUFFER_SIZE:I = 0x3

.field private static final SENSORHUB_EVENT_RESET_TIME_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.SensorStatusCheckImpl"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private mIsStarted:Z

.field private mSensorHubResetCnt:I

.field private mSensorHubResetTime:[J

.field private mSensorHubResetTimeAddress:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mIsStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorHubResetCnt(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorHubResetTime(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)[J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSensorHubResetCnt(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSensorHubResetTimeStampArraySize(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->setSensorHubResetTimeStampArraySize(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreSensorHubResetTime(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->storeSensorHubResetTime()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 81
    const/16 v0, 0x34

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    .line 42
    const/16 v2, 0xa

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    .line 43
    iput v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mIsStarted:Z

    .line 49
    new-instance v1, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 83
    new-instance v1, Lcom/samsung/android/hardware/context/util/EventStoreManager;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/hardware/context/util/EventStoreManager;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.contextaware.SENSORHUB_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method private initializeLastEvent()V
    .locals 4

    .line 157
    const-string v0, "SemContext.CaeProvider.SensorStatusCheckImpl"

    const-string v1, "initialize Last Event!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    .line 159
    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setSensorHubResetTimeStampArraySize(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/os/Bundle;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "isTimeStampArrayEmpty":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    goto :goto_1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    .line 148
    .local v1, "resetTimeStampArraySize":I
    if-nez v0, :cond_2

    .line 149
    const/16 v1, 0xa

    .line 150
    :cond_2
    const-string v2, "SensorHubResetTimeStampArraySize"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorHub Reset Cnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemContext.CaeProvider.SensorStatusCheckImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_3

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorHubReset TimeStamp address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 155
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private storeSensorHubResetTime()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    iget v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 137
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTimeAddress:I

    .line 138
    return-void
.end method


# virtual methods
.method public add()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mIsStarted:Z

    .line 94
    return-void
.end method

.method public remove()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->remove()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mIsStarted:Z

    .line 100
    return-void
.end method

.method public requestToUpdate()V
    .locals 14

    .line 104
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->requestToUpdate()V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "SemContext.CaeProvider.SensorStatusCheckImpl"

    if-eqz v0, :cond_4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestToUpdate SensorHub Reset Cnt : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 108
    .local v0, "context":Landroid/os/Bundle;
    const-string v4, "Status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 109
    .local v5, "status":I
    iget v6, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    .line 110
    .local v6, "resetCnt":I
    const/16 v7, 0xa

    new-array v8, v7, [J

    .line 111
    .local v8, "resetTimeStampArray":[J
    iget-object v9, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetTime:[J

    const/4 v10, 0x0

    invoke-static {v9, v10, v8, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v7, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mSensorHubResetCnt:I

    const/4 v9, 0x3

    if-lez v7, :cond_0

    .line 114
    const-string v7, "SensorHub Reset happened before requestToUpdate"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    :cond_0
    const-string v7, "ResetCnt"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->setSensorHubResetTimeStampArraySize(Landroid/os/Bundle;)V

    .line 119
    const-string v7, "SensorHubResetTimeStampArray"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 120
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 121
    .local v7, "data":[J
    if-nez v7, :cond_1

    return-void

    .line 122
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, v7

    if-ge v10, v11, :cond_2

    .line 123
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LastEventMap sensorHubEvent TimeStamp address : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-wide v12, v7, v10

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 125
    .end local v10    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mEventListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    invoke-interface {v3, v1, v0}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 126
    if-ne v5, v9, :cond_3

    .line 127
    const/4 v5, 0x0

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/SensorStatusCheckImpl;->initializeLastEvent()V

    .line 131
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v5    # "status":I
    .end local v6    # "resetCnt":I
    .end local v7    # "data":[J
    .end local v8    # "resetTimeStampArray":[J
    goto :goto_1

    .line 132
    :cond_4
    const-string v0, "Sensor Check Event is null!!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_1
    return-void
.end method
