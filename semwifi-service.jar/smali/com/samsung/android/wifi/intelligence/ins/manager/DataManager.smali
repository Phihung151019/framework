.class public final Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;,
        Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;,
        Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;
    }
.end annotation


# static fields
.field private static currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static dataCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static dataJson:Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

.field private static instance:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

.field private static nsmModelDataFile:Ljava/io/File;

.field private static pathModelDataFile:Ljava/io/File;


# instance fields
.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private data0CollectedTime:J

.field private data0Count:I

.field private initialDataCollection:Z

.field private isDataManagerStarted:Z

.field private lastLqLabeled:Ljava/lang/String;

.field private lastOutageCntLabeled:Ljava/lang/String;

.field private mBssid:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

.field private mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

.field private noMove:Z

.field private final nsmBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;",
            ">;"
        }
    .end annotation
.end field

.field private nsmModelDataWriter:Ljava/io/FileWriter;

.field private final nsmSequenceBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;",
            ">;"
        }
    .end annotation
.end field

.field private final outageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;",
            ">;"
        }
    .end annotation
.end field

.field private outageTriggered:Z

.field private final pathBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/PathData;",
            ">;"
        }
    .end annotation
.end field

.field private pathModelDataWriter:Ljava/io/FileWriter;


# direct methods
.method public static synthetic $r8$lambda$0EDrI5nevLxfUox9mBT0fvbh-LU(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->trimBuffers()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$k9WgWlCrkWtn_gyjTki7W-rheoQ(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialDataCollection(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->initialDataCollection:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoMove(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->noMove:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnsmModelDataWriter(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/io/FileWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpathModelDataWriter(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/io/FileWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdata0CollectedTime(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0CollectedTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnoMove(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->noMove:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetcurrentNsmDataLineCounter()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetcurrentPathDataLineCounter()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdataCounter()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdataJson()Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataJson:Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcheckFiles(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->checkFiles(II)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static -$$Nest$smcheckUnusualData()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x2710

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const v1, 0x249f0

    .line 30
    .line 31
    .line 32
    if-le v0, v1, :cond_2

    .line 33
    .line 34
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0

    .line 36
    :cond_2
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mBssid:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageQueue:Ljava/util/Queue;

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0CollectedTime:J

    .line 49
    .line 50
    return-void
.end method

.method private addOutageDataToBuffer(Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getTimestamp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "-1"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "InsDataManager"

    .line 14
    .line 15
    const-string p1, "No outage data."

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getTimestamp()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->DEFAULT:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 34
    .line 35
    move-object v4, v3

    .line 36
    invoke-virtual {v4}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v4}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getLatency()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    int-to-float v6, v6

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRxLinkSpeed()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    int-to-float v7, v7

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getTxLinkSpeed()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    int-to-float v8, v0

    .line 79
    iget-object v9, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mBssid:Ljava/lang/String;

    .line 80
    .line 81
    move-object v10, p1

    .line 82
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;-><init>(Ljava/lang/String;IIFFFFLjava/lang/String;Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    const/4 v0, 0x3

    .line 102
    const/4 v1, 0x0

    .line 103
    if-le p1, v0, :cond_1

    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const/16 v0, 0x1e

    .line 117
    .line 118
    if-le p1, v0, :cond_2

    .line 119
    .line 120
    iget-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 121
    .line 122
    if-nez p1, :cond_2

    .line 123
    .line 124
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void
.end method

.method private static checkFiles(II)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkFiles - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "InsDataManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 32
    .line 33
    const v1, 0x20f58

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->deleteLinesInFile(ILjava/io/File;II)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_0
    if-nez p1, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataFile:Ljava/io/File;

    .line 44
    .line 45
    const/16 v1, 0x2328

    .line 46
    .line 47
    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->deleteLinesInFile(ILjava/io/File;II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return p0
.end method

.method private static deleteLinesInFile(ILjava/io/File;II)I
    .locals 12

    .line 1
    const-string v0, "InsDataManager"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v3, Ljava/io/FileReader;

    .line 7
    .line 8
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 12
    .line 13
    .line 14
    move v3, v1

    .line 15
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v4, "deleteLinesInFile - currentLineCount: "

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    add-int/2addr v3, p0

    .line 48
    if-le v3, p2, :cond_a

    .line 49
    .line 50
    new-instance v2, Ljava/io/BufferedReader;

    .line 51
    .line 52
    new-instance v3, Ljava/io/FileReader;

    .line 53
    .line 54
    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    invoke-static {v4}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->extractTimestamp(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v5

    .line 78
    invoke-static {p3, v4}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->extractFlushTimestamp(ILjava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    const-wide/16 v9, 0x0

    .line 83
    .line 84
    cmp-long v11, v5, v9

    .line 85
    .line 86
    if-lez v11, :cond_1

    .line 87
    .line 88
    cmp-long v9, v7, v9

    .line 89
    .line 90
    if-lez v9, :cond_1

    .line 91
    .line 92
    new-instance v9, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;

    .line 93
    .line 94
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v4, v9, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;->dataLine:Ljava/lang/String;

    .line 98
    .line 99
    iput-wide v5, v9, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;->timestamp:J

    .line 100
    .line 101
    iput-wide v7, v9, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;->flushTimestamp:J

    .line 102
    .line 103
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception p0

    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :catch_1
    move-exception p0

    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :catch_2
    move-exception p0

    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 117
    .line 118
    .line 119
    new-instance v2, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    const/4 v5, 0x0

    .line 129
    move v6, v5

    .line 130
    :goto_2
    if-ge v6, v4, :cond_3

    .line 131
    .line 132
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;

    .line 139
    .line 140
    iget-wide v8, v7, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;->flushTimestamp:J

    .line 141
    .line 142
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    new-instance v9, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda2;

    .line 147
    .line 148
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    sub-int/2addr p2, p0

    .line 174
    new-instance p0, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const/4 v7, 0x1

    .line 184
    sub-int/2addr v6, v7

    .line 185
    move v8, v5

    .line 186
    :goto_3
    if-ltz v6, :cond_4

    .line 187
    .line 188
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    check-cast v9, Ljava/lang/Long;

    .line 193
    .line 194
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    check-cast v9, Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    add-int/2addr v10, v8

    .line 205
    if-gt v10, p2, :cond_4

    .line 206
    .line 207
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    add-int/2addr v8, v10

    .line 212
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    .line 214
    .line 215
    add-int/lit8 v6, v6, -0x1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    sub-int/2addr p2, v3

    .line 227
    if-ne p3, v7, :cond_5

    .line 228
    .line 229
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    .line 231
    neg-int v6, p2

    .line 232
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    if-nez p3, :cond_6

    .line 237
    .line 238
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    .line 240
    neg-int v6, p2

    .line 241
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 242
    .line 243
    .line 244
    :cond_6
    :goto_4
    new-instance v3, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda3;

    .line 245
    .line 246
    const/4 v6, 0x0

    .line 247
    invoke-direct {v3, v6}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda3;-><init>(I)V

    .line 248
    .line 249
    .line 250
    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    new-instance v6, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda3;

    .line 255
    .line 256
    const/4 v8, 0x1

    .line 257
    invoke-direct {v6, v8}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda3;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v3, v6}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {p0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    .line 266
    .line 267
    new-instance v3, Ljava/io/FileWriter;

    .line 268
    .line 269
    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 270
    .line 271
    .line 272
    if-ne p3, v7, :cond_7

    .line 273
    .line 274
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getCsvHeader()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_7
    if-nez p3, :cond_8

    .line 283
    .line 284
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getCsvHeader()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_8
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    :goto_6
    if-ge v5, p1, :cond_9

    .line 296
    .line 297
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p3

    .line 301
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    check-cast p3, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;

    .line 304
    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    iget-object p3, p3, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$DataLine;->dataLine:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p3

    .line 316
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p3

    .line 330
    invoke-virtual {v3, p3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string p1, "deleteLinesInFile - Kept lines: "

    .line 344
    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p1, ", Deleted lines: "

    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string p1, " across "

    .line 360
    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    sub-int/2addr p1, p2

    .line 373
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string p1, " events"

    .line 377
    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .line 393
    .line 394
    :cond_a
    return v1

    .line 395
    :goto_7
    const-string p1, "Unknown exception: "

    .line 396
    .line 397
    invoke-static {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto :goto_a

    .line 401
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    const-string p2, "Error writing to file: "

    .line 404
    .line 405
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    .line 420
    .line 421
    goto :goto_a

    .line 422
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    const-string p2, "File Not Found: "

    .line 425
    .line 426
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 440
    .line 441
    .line 442
    :goto_a
    return v1
.end method

.method private static extractFlushTimestamp(ILjava/lang/String;)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0x8

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p0, 0x9

    .line 7
    .line 8
    :goto_0
    :try_start_0
    const-string v0, ","

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aget-object v0, p1, p0

    .line 15
    .line 16
    const-string v1, "timestamp"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    aget-object p0, p1, p0

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-wide p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Unable to parse flushTimestamp. "

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "InsDataManager"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    const-wide/16 p0, 0x0

    .line 63
    .line 64
    return-wide p0
.end method

.method private static extractTimestamp(Ljava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v1, p0, v0

    .line 9
    .line 10
    const-string v2, "timestamp"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-wide v0

    .line 32
    :catch_0
    const-string p0, "InsDataManager"

    .line 33
    .line 34
    const-string v0, "Unable to parse timestamp"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0
.end method

.method public static getInstance()Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->instance:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->instance:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->instance:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 13
    .line 14
    return-object v0
.end method

.method private trimBuffers()V
    .locals 11

    .line 1
    const-string v0, "trimBuffers start."

    .line 2
    .line 3
    const-string v1, "InsDataManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-wide/32 v2, 0x124f8

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v5, "trimBuffers - pathBuffer size: "

    .line 23
    .line 24
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :try_start_0
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    add-int/lit8 v6, v6, -0x1

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getTimestamp()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move v5, v4

    .line 68
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    add-int/lit8 v6, v6, -0x1

    .line 75
    .line 76
    if-ge v5, v6, :cond_1

    .line 77
    .line 78
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 85
    .line 86
    sget-object v7, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 87
    .line 88
    invoke-virtual {v6}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getTimestamp()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v7

    .line 100
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    sub-long/2addr v7, v9

    .line 105
    cmp-long v6, v7, v2

    .line 106
    .line 107
    if-gtz v6, :cond_0

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto :goto_2

    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto :goto_3

    .line 117
    :cond_1
    :goto_1
    if-lez v5, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :goto_2
    const-string v5, "Exception on trimming PathBuffer : "

    .line 130
    .line 131
    invoke-static {v5, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v6, "pathBuffer Date Parse Exception: "

    .line 138
    .line 139
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v5, "trimBuffers - nsmBuffer size: "

    .line 166
    .line 167
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :try_start_1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 187
    .line 188
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    add-int/lit8 v6, v6, -0x1

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getTimestamp()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    move v5, v4

    .line 211
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    add-int/lit8 v6, v6, -0x1

    .line 218
    .line 219
    if-ge v5, v6, :cond_4

    .line 220
    .line 221
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 228
    .line 229
    sget-object v7, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 230
    .line 231
    invoke-virtual {v6}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getTimestamp()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v7

    .line 243
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    .line 244
    .line 245
    .line 246
    move-result-wide v9

    .line 247
    sub-long/2addr v7, v9

    .line 248
    cmp-long v6, v7, v2

    .line 249
    .line 250
    if-gtz v6, :cond_3

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catch_2
    move-exception p0

    .line 257
    goto :goto_8

    .line 258
    :catch_3
    move-exception p0

    .line 259
    goto :goto_9

    .line 260
    :cond_4
    :goto_6
    move v0, v4

    .line 261
    :goto_7
    if-ge v0, v5, :cond_5

    .line 262
    .line 263
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageQueue:Ljava/util/Queue;

    .line 269
    .line 270
    check-cast v2, Ljava/util/LinkedList;

    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 273
    .line 274
    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :goto_8
    const-string v0, "Exception on trimming NsmBuffer : "

    .line 279
    .line 280
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_a

    .line 284
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v2, "nsmBuffer Date Parse Exception: "

    .line 287
    .line 288
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 302
    .line 303
    .line 304
    :cond_5
    :goto_a
    return-void
.end method


# virtual methods
.method public final getNsmSequenceBuffer()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPathSequenceBuffer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/PathData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    if-le v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sub-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_0
    return-object p0
.end method

.method public final getSensorCollector()Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasStarted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 2
    .line 3
    return p0
.end method

.method public final init()V
    .locals 2

    .line 1
    const-string v0, "InsDataManager"

    .line 2
    .line 3
    const-string v1, "init()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Context is null"

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/content/Context;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onOutageCountUpdate(Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getOutageCnt()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getLqCallbackTriggered()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "onOutageCountUpdate() - Outage Data: "

    .line 10
    .line 11
    const-string v3, ", LQ : "

    .line 12
    .line 13
    const-string v4, ". Outage Triggered: "

    .line 14
    .line 15
    invoke-static {v2, v0, v3, v1, v4}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "InsDataManager"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-boolean v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 34
    .line 35
    if-eqz v2, :cond_9

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    if-eqz v2, :cond_9

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_9

    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_0
    const-string v2, "0"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sget-object v4, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->LQ_CALLBACK_REVERTED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 64
    .line 65
    const/4 v5, 0x1

    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    iget-boolean v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 69
    .line 70
    if-nez v6, :cond_4

    .line 71
    .line 72
    iget v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 73
    .line 74
    if-lez v6, :cond_4

    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    new-instance v8, Ljava/util/Random;

    .line 81
    .line 82
    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-boolean v9, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->initialDataCollection:Z

    .line 86
    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    const-wide/16 v8, 0x0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    :goto_0
    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    cmpg-double v8, v8, v10

    .line 102
    .line 103
    if-gez v8, :cond_4

    .line 104
    .line 105
    iget-wide v8, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0CollectedTime:J

    .line 106
    .line 107
    sub-long/2addr v6, v8

    .line 108
    const-wide/32 v10, 0x124f8

    .line 109
    .line 110
    .line 111
    cmp-long v6, v6, v10

    .line 112
    .line 113
    if-lez v6, :cond_4

    .line 114
    .line 115
    const-wide/16 v6, 0x0

    .line 116
    .line 117
    cmp-long v6, v8, v6

    .line 118
    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    iget-boolean v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->initialDataCollection:Z

    .line 122
    .line 123
    if-eqz v6, :cond_2

    .line 124
    .line 125
    const-string v6, "Trying to save initial normal data."

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    const-string v6, "Trying to save additional normal data"

    .line 129
    .line 130
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 136
    .line 137
    iget-object v8, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 138
    .line 139
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->trimBuffers()V

    .line 155
    .line 156
    .line 157
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    const/16 v7, 0xb4

    .line 164
    .line 165
    if-lt v6, v7, :cond_3

    .line 166
    .line 167
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 168
    .line 169
    new-instance v7, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-direct {v7, p0, v8, v5}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;-><init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;IZ)V

    .line 176
    .line 177
    .line 178
    invoke-interface {v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_3
    const-string v6, "Too short for collecting additional normal data"

    .line 183
    .line 184
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 188
    .line 189
    iget-boolean v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 190
    .line 191
    if-nez v6, :cond_5

    .line 192
    .line 193
    const-string v6, "Outage started \u2192 trimming buffers, etc."

    .line 194
    .line 195
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    iput-boolean v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 199
    .line 200
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 201
    .line 202
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 203
    .line 204
    iget-object v8, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 205
    .line 206
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    .line 220
    .line 221
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 222
    .line 223
    invoke-virtual {v6, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->setOutageTriggered(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 227
    .line 228
    new-instance v7, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda0;

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    invoke-direct {v7, p0, v8}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 235
    .line 236
    .line 237
    :cond_5
    const/4 v6, 0x0

    .line 238
    if-eqz v2, :cond_6

    .line 239
    .line 240
    iget-boolean v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 241
    .line 242
    if-eqz v7, :cond_6

    .line 243
    .line 244
    const-string v7, "Outage back to 0, Data labelled as 0"

    .line 245
    .line 246
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    iput-boolean v6, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 250
    .line 251
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 252
    .line 253
    iget-object v8, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 254
    .line 255
    iget-object v9, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 256
    .line 257
    invoke-virtual {v9}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v9}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-virtual {v8, v9, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    .line 271
    .line 272
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 273
    .line 274
    invoke-virtual {v7, v6}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->setOutageTriggered(Z)V

    .line 275
    .line 276
    .line 277
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 278
    .line 279
    new-instance v8, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;

    .line 280
    .line 281
    invoke-virtual {v4}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-direct {v8, p0, v4, v6}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;-><init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;IZ)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 289
    .line 290
    .line 291
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 292
    .line 293
    if-eqz v4, :cond_7

    .line 294
    .line 295
    iget-object v7, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz v7, :cond_7

    .line 298
    .line 299
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    if-eqz v4, :cond_7

    .line 304
    .line 305
    iget-object v4, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-eqz v4, :cond_7

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_7
    const-string v4, ", "

    .line 315
    .line 316
    if-nez v2, :cond_8

    .line 317
    .line 318
    const-string v2, "Y"

    .line 319
    .line 320
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_8

    .line 325
    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->addOutageDataToBuffer(Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    .line 327
    .line 328
    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v2, "Labeling new (count, lq) = ("

    .line 332
    .line 333
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v2, ") as LQ_CALLBACK_TRIGGERED, Data labeled as 1"

    .line 346
    .line 347
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 358
    .line 359
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 360
    .line 361
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 362
    .line 363
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getRSSI()Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v3

    .line 371
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 376
    .line 377
    .line 378
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 379
    .line 380
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;

    .line 381
    .line 382
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->LQ_CALLBACK_TRIGGERED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 383
    .line 384
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-direct {v2, p0, v3, v6}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;-><init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;IZ)V

    .line 389
    .line 390
    .line 391
    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 392
    .line 393
    .line 394
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 395
    .line 396
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 397
    .line 398
    return-void

    .line 399
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    const-string v5, "Updating old (count, lq) = ( "

    .line 402
    .line 403
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 415
    .line 416
    const-string v6, " ) to new (count, lq) = ( "

    .line 417
    .line 418
    invoke-static {v2, v5, v6, v0, v4}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v4, " )"

    .line 422
    .line 423
    invoke-static {v2, v1, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 431
    .line 432
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 433
    .line 434
    :goto_3
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->addOutageDataToBuffer(Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_9
    :goto_4
    const-string p0, "Executor not initialised, ignoring Outage event"

    .line 439
    .line 440
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    return-void
.end method

.method public final registerContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->contextRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "data0Count"

    .line 6
    .line 7
    const-string v4, "/"

    .line 8
    .line 9
    const-string v5, "/data.json"

    .line 10
    .line 11
    const-string v6, "/data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 12
    .line 13
    iput-object v2, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mBssid:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 16
    .line 17
    const-string v7, "InsDataManager"

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "DataManager already started, ignoring start call"

    .line 22
    .line 23
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->getCurrentNetworkData()Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkData;->getWIFI()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const-string v0, "The current active network is not WiFi, data might not be recorded!"

    .line 44
    .line 45
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "start()"

    .line 49
    .line 50
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mSensorDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mNetworkDataManager:Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/network/NetworkDataManager;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v8, "Error starting data collection: "

    .line 69
    .line 70
    invoke-static {v8, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    const-string v8, "Error creating executor service: "

    .line 82
    .line 83
    invoke-static {v8, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_2
    move-exception v0

    .line 98
    const-string v8, "Error clearing data buffers: "

    .line 99
    .line 100
    invoke-static {v8, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    const/4 v8, 0x1

    .line 104
    const/4 v9, 0x0

    .line 105
    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 106
    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-string v11, "path_model_data_collected.csv"

    .line 123
    .line 124
    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_2

    .line 138
    .line 139
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catch_3
    move-exception v0

    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :catch_4
    move-exception v0

    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_2
    :goto_3
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    const-string v0, "Path CSV does not exist, writing header!"

    .line 164
    .line 165
    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/io/FileWriter;

    .line 169
    .line 170
    sget-object v10, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 171
    .line 172
    invoke-direct {v0, v10, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 173
    .line 174
    .line 175
    iput-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 176
    .line 177
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getCsvHeader()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    invoke-virtual {v0, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_3
    new-instance v0, Ljava/io/FileWriter;

    .line 191
    .line 192
    sget-object v10, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataFile:Ljava/io/File;

    .line 193
    .line 194
    invoke-direct {v0, v10, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 195
    .line 196
    .line 197
    iput-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 198
    .line 199
    :goto_4
    new-instance v0, Ljava/io/File;

    .line 200
    .line 201
    new-instance v10, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const-string v10, "nsm_model_data_collected.csv"

    .line 217
    .line 218
    invoke-direct {v0, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataFile:Ljava/io/File;

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_4

    .line 228
    .line 229
    const-string v0, "NSM CSV does not exist, writing header!"

    .line 230
    .line 231
    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    new-instance v0, Ljava/io/FileWriter;

    .line 235
    .line 236
    sget-object v4, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataFile:Ljava/io/File;

    .line 237
    .line 238
    invoke-direct {v0, v4, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 239
    .line 240
    .line 241
    iput-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 242
    .line 243
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getCsvHeader()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_4
    new-instance v0, Ljava/io/FileWriter;

    .line 257
    .line 258
    sget-object v4, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataFile:Ljava/io/File;

    .line 259
    .line 260
    invoke-direct {v0, v4, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 261
    .line 262
    .line 263
    iput-object v0, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 264
    .line 265
    :goto_5
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 266
    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-direct {v0, v4}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataJson:Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :goto_6
    const-string v4, "Error initializing files: "

    .line 289
    .line 290
    invoke-static {v4, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto :goto_8

    .line 294
    :goto_7
    const-string v4, "Could not initialize files for data collection"

    .line 295
    .line 296
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    .line 301
    .line 302
    :goto_8
    const-string v0, "CSV Files initialized!"

    .line 303
    .line 304
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    const-string v0, "Starting scheduled process on executor"

    .line 308
    .line 309
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    iput-boolean v8, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 313
    .line 314
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 315
    .line 316
    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 317
    .line 318
    .line 319
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 322
    .line 323
    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 324
    .line 325
    .line 326
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    .line 328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    .line 330
    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 331
    .line 332
    .line 333
    sput-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 334
    .line 335
    new-instance v0, Ljava/io/File;

    .line 336
    .line 337
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    const-string v10, "Error reading JSON file: "

    .line 345
    .line 346
    if-eqz v4, :cond_6

    .line 347
    .line 348
    array-length v11, v4

    .line 349
    move v12, v9

    .line 350
    move v13, v12

    .line 351
    move v14, v13

    .line 352
    :goto_9
    if-ge v12, v11, :cond_7

    .line 353
    .line 354
    aget-object v15, v4, v12

    .line 355
    .line 356
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_5

    .line 361
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v8, "Reading directory - "

    .line 365
    .line 366
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    new-instance v0, Ljava/io/File;

    .line 384
    .line 385
    new-instance v8, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v9

    .line 394
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-eqz v0, :cond_5

    .line 412
    .line 413
    :try_start_4
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 414
    .line 415
    new-instance v8, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v9

    .line 424
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v8

    .line 434
    invoke-direct {v0, v8}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    const-string v8, "nsmDataLineCount"

    .line 438
    .line 439
    const/4 v9, 0x0

    .line 440
    invoke-virtual {v0, v9, v8}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 444
    move-object/from16 v16, v4

    .line 445
    .line 446
    :try_start_5
    const-string v4, "pathDataLineCount"

    .line 447
    .line 448
    invoke-virtual {v0, v9, v4}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 449
    .line 450
    .line 451
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 452
    move v9, v0

    .line 453
    goto :goto_d

    .line 454
    :goto_a
    move v9, v8

    .line 455
    goto :goto_c

    .line 456
    :catch_5
    move-exception v0

    .line 457
    goto :goto_a

    .line 458
    :goto_b
    const/4 v9, 0x0

    .line 459
    goto :goto_c

    .line 460
    :catch_6
    move-exception v0

    .line 461
    move-object/from16 v16, v4

    .line 462
    .line 463
    goto :goto_b

    .line 464
    :goto_c
    invoke-static {v10, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    move v8, v9

    .line 468
    const/4 v9, 0x0

    .line 469
    :goto_d
    add-int/2addr v13, v8

    .line 470
    add-int/2addr v14, v9

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    .line 492
    .line 493
    const-string v0, "NSM Data lines : "

    .line 494
    .line 495
    invoke-static {v8, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    const-string v0, "Path Data lines : "

    .line 503
    .line 504
    invoke-static {v9, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .line 510
    .line 511
    goto :goto_e

    .line 512
    :cond_5
    move-object/from16 v16, v4

    .line 513
    .line 514
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 515
    .line 516
    move-object/from16 v4, v16

    .line 517
    .line 518
    const/4 v8, 0x1

    .line 519
    const/4 v9, 0x0

    .line 520
    goto/16 :goto_9

    .line 521
    .line 522
    :cond_6
    const-string v0, "FileIO"

    .line 523
    .line 524
    const-string v4, "No directories found in /data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 525
    .line 526
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    const/4 v13, 0x0

    .line 530
    const/4 v14, 0x0

    .line 531
    :cond_7
    const-string v0, "Total NSM data line : "

    .line 532
    .line 533
    invoke-static {v13, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    const-string v0, "Total Path data line : "

    .line 541
    .line 542
    invoke-static {v14, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .line 548
    .line 549
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentNsmDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 550
    .line 551
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 552
    .line 553
    .line 554
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->currentPathDataLineCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 555
    .line 556
    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 557
    .line 558
    .line 559
    :try_start_6
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 560
    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-direct {v0, v2}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    const/4 v9, 0x0

    .line 583
    invoke-virtual {v0, v9, v3}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    iput v2, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 588
    .line 589
    const-string v2, "initialDataCollection"

    .line 590
    .line 591
    const/4 v4, 0x1

    .line 592
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-ne v2, v4, :cond_8

    .line 597
    .line 598
    move v9, v4

    .line 599
    :cond_8
    iput-boolean v9, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->initialDataCollection:Z

    .line 600
    .line 601
    if-eqz v9, :cond_9

    .line 602
    .line 603
    iget v2, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 604
    .line 605
    if-nez v2, :cond_9

    .line 606
    .line 607
    iput v4, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0Count:I

    .line 608
    .line 609
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->updateJson(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 614
    .line 615
    .line 616
    goto :goto_f

    .line 617
    :catch_7
    move-exception v0

    .line 618
    invoke-static {v10, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    :cond_9
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 622
    .line 623
    .line 624
    move-result-wide v2

    .line 625
    iput-wide v2, v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->data0CollectedTime:J

    .line 626
    .line 627
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    const-string v0, "InsDataManager"

    .line 2
    .line 3
    const-string v1, "stop()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "DataManager already stopped"

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda0;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    .line 54
    const-wide/16 v3, 0xa

    .line 55
    .line 56
    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    .line 63
    goto :goto_1

    .line 64
    :goto_0
    const-string v2, "Error shutting down executor service: "

    .line 65
    .line 66
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    const-string v2, "Could not shutdown executor service!"

    .line 71
    .line 72
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathModelDataWriter:Ljava/io/FileWriter;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmModelDataWriter:Ljava/io/FileWriter;

    .line 92
    .line 93
    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataJson:Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->close()V

    .line 96
    .line 97
    .line 98
    sput-object v1, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataJson:Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_2
    move-exception v2

    .line 102
    const-string v3, "Error closing file writer: "

    .line 103
    .line 104
    invoke-static {v3, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catch_3
    const-string v2, "Data writers already closed!"

    .line 109
    .line 110
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_4
    const-string v2, "Could not close file writer!"

    .line 115
    .line 116
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->pathBuffer:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmBuffer:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->nsmSequenceBuffer:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageQueue:Ljava/util/Queue;

    .line 135
    .line 136
    check-cast v0, Ljava/util/LinkedList;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 139
    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->outageTriggered:Z

    .line 143
    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->isDataManagerStarted:Z

    .line 145
    .line 146
    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->dataCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 149
    .line 150
    .line 151
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastOutageCntLabeled:Ljava/lang/String;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->lastLqLabeled:Ljava/lang/String;

    .line 154
    .line 155
    return-void
.end method
