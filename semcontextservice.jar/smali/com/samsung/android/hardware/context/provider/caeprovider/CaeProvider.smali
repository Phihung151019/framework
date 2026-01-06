.class public Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.super Lcom/samsung/android/hardware/context/provider/Provider;
.source "CaeProvider.java"


# static fields
.field private static final LAST_EVENT_BUFFER_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider"

.field private static final mLock:Ljava/lang/Object;

.field private static sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;


# instance fields
.field private final mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

.field protected mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

.field protected final mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private final mServiceNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)Lcom/samsung/android/hardware/context/provider/EventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLastEvent(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setLastEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # I
    .param p3, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    new-instance v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$1;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    .line 98
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;-><init>(Landroid/content/Context;Lcom/samsung/android/contextaware/manager/ContextAwareListener;)V

    sput-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 102
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iput p2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mServiceNum:I

    .line 105
    iput-object p3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 106
    new-instance v0, Lcom/samsung/android/hardware/context/util/EventStoreManager;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/hardware/context/util/EventStoreManager;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    .line 108
    return-void

    .line 102
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized setLastEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 362
    if-nez p2, :cond_0

    .line 363
    :try_start_0
    const-string v0, "SemContext.CaeProvider"

    const-string v1, "Bundle is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 361
    .end local p0    # "this":Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 367
    .restart local p1    # "type":I
    .restart local p2    # "context":Landroid/os/Bundle;
    :cond_0
    if-gez p1, :cond_1

    .line 368
    :try_start_1
    const-string v0, "SemContext.CaeProvider"

    const-string v1, "SemContext type value is wrong!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    monitor-exit p0

    return-void

    .line 371
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mLastEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/hardware/context/util/EventStoreManager;->storeData(Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :cond_2
    monitor-exit p0

    return-void

    .line 361
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "property"    # I
    .param p4, "dataType"    # Lcom/samsung/android/hardware/context/util/DataType;
    .param p5, "key"    # Ljava/lang/String;

    .line 424
    invoke-static {p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProtocol;->convertToCae(I)I

    move-result v0

    .line 425
    .local v0, "type":I
    if-gez v0, :cond_0

    return-void

    .line 426
    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider$2;->$SwitchMap$com$samsung$android$hardware$context$util$DataType:[I

    invoke-virtual {p4}, Lcom/samsung/android/hardware/context/util/DataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 445
    :pswitch_0
    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 446
    .local v1, "intArr":[I
    if-eqz v1, :cond_1

    .line 447
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 448
    .local v4, "anIntArr":I
    sget-object v5, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {v5, v0, p3, v4}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 447
    .end local v4    # "anIntArr":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    .end local v1    # "intArr":[I
    :pswitch_1
    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 441
    .local v1, "byteArr":[B
    if-eqz v1, :cond_1

    .line 442
    sget-object v2, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {v2, v0, p3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    goto :goto_1

    .line 437
    .end local v1    # "byteArr":[B
    :pswitch_2
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IIF)Z

    .line 438
    goto :goto_1

    .line 434
    :pswitch_3
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v0, p3, v2, v3}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IID)Z

    .line 435
    goto :goto_1

    .line 431
    :pswitch_4
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 432
    goto :goto_1

    .line 428
    :pswitch_5
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    invoke-virtual {p2, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(IIZ)Z

    .line 429
    nop

    .line 455
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public add()V
    .locals 3

    .line 118
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mServiceNum:I

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProtocol;->convertToCae(I)I

    move-result v0

    .line 119
    .local v0, "type":I
    if-lez v0, :cond_0

    .line 120
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->registerListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 121
    :cond_0
    return-void
.end method

.method public getLastEvent()Ljava/lang/String;
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    if-nez v0, :cond_0

    .line 391
    const-string v0, "SemContext.CaeProvider"

    const-string v1, "EventStoreManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, ""

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mEventStoreManager:Lcom/samsung/android/hardware/context/util/EventStoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/EventStoreManager;->getEventInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getListener()Lcom/samsung/android/contextaware/manager/ContextAwareListener;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method getManager()Lcom/samsung/android/contextaware/ContextAwareManager;
    .locals 1

    .line 338
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .line 386
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .line 330
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 318
    return-object p1
.end method

.method public remove()V
    .locals 3

    .line 131
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mServiceNum:I

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProtocol;->convertToCae(I)I

    move-result v0

    .line 132
    .local v0, "type":I
    if-lez v0, :cond_0

    .line 133
    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/contextaware/ContextAwareManager;->unregisterListener(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 134
    :cond_0
    return-void
.end method

.method public requestHistoryData()V
    .locals 4

    .line 405
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 411
    :sswitch_0
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 413
    goto :goto_0

    .line 415
    :sswitch_1
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 417
    goto :goto_0

    .line 407
    :sswitch_2
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 409
    nop

    .line 421
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x1a -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public requestToUpdate()V
    .locals 4

    .line 278
    iget v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mServiceNum:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 302
    :sswitch_0
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->CH_LOC_TRIGGER_SERVICE:I

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 304
    goto :goto_0

    .line 297
    :sswitch_1
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->DEVICE_PHYSICAL_CONTEXT_MONITOR_SERVICE:I

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 299
    goto :goto_0

    .line 292
    :sswitch_2
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v1, Lcom/samsung/android/contextaware/ContextAwareManager;->ANY_MOTION_DETECTOR_SERVICE:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 295
    goto :goto_0

    .line 288
    :sswitch_3
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 290
    goto :goto_0

    .line 284
    :sswitch_4
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_ACTIVITY_TRACKER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 286
    goto :goto_0

    .line 280
    :sswitch_5
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->sContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->mCAListener:Lcom/samsung/android/contextaware/manager/ContextAwareListener;

    sget v2, Lcom/samsung/android/contextaware/ContextAwareManager;->REQUEST_PEDOMETER_CURRENT_INFO:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/ContextAwareManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareListener;I)V

    .line 282
    nop

    .line 308
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x32 -> :sswitch_2
        0x33 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 6
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 145
    invoke-virtual {p2, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v2

    .line 146
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 147
    const-string v0, "SemContext.CaeProvider"

    const-string v1, "setAttribute() : attribute is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, p1

    .end local p1    # "service":I
    .local v1, "service":I
    goto/16 :goto_0

    .line 260
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_0
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "trigger_type"

    const/16 v3, 0x59

    move-object v0, p0

    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 261
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x5a

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 262
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "posture"

    const/16 v3, 0x78

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 263
    goto/16 :goto_0

    .line 255
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_1
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->BYTE_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "activity_calibration"

    const/16 v3, 0x5b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 256
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "activity_speed"

    const/16 v3, 0x5c

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 257
    goto/16 :goto_0

    .line 209
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_2
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    const-string p1, "dpcm_mode"

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 210
    .local p1, "dpcm_mode":I
    packed-switch p1, :pswitch_data_0

    .line 251
    goto/16 :goto_0

    .line 248
    :pswitch_0
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x7f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 249
    goto/16 :goto_0

    .line 241
    :pswitch_1
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_mode"

    const/16 v3, 0x7e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 242
    goto/16 :goto_0

    .line 244
    :pswitch_2
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_lowcnt"

    const/16 v3, 0x7b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 245
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_highcnt"

    const/16 v3, 0x7c

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 246
    goto/16 :goto_0

    .line 236
    :pswitch_3
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_mode"

    const/16 v3, 0x7d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 237
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_lowlux"

    const/16 v3, 0x79

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 238
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_highlux"

    const/16 v3, 0x7a

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 239
    goto/16 :goto_0

    .line 233
    :pswitch_4
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x4f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 234
    goto/16 :goto_0

    .line 230
    :pswitch_5
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x4e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 231
    goto/16 :goto_0

    .line 227
    :pswitch_6
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x56

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 228
    goto/16 :goto_0

    .line 224
    :pswitch_7
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x55

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 225
    goto/16 :goto_0

    .line 221
    :pswitch_8
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x54

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 222
    goto/16 :goto_0

    .line 218
    :pswitch_9
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x53

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 219
    goto/16 :goto_0

    .line 215
    :pswitch_a
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x58

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 216
    goto/16 :goto_0

    .line 212
    :pswitch_b
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "dpcm_data"

    const/16 v3, 0x57

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 213
    goto/16 :goto_0

    .line 205
    .end local v1    # "service":I
    .local p1, "service":I
    :sswitch_3
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->FLOAT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "color_threshold"

    const/16 v3, 0x42

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 206
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x43

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 207
    goto/16 :goto_0

    .line 202
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_4
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "device_mode"

    const/16 v3, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 203
    goto/16 :goto_0

    .line 199
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_5
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x3d

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 200
    goto/16 :goto_0

    .line 192
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_6
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "device_type"

    const/16 v3, 0x39

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 193
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x3b

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "alert_count"

    const/16 v3, 0x3c

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 195
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "start_time"

    const/16 v3, 0x37

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 196
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "end_time"

    const/16 v3, 0x38

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 197
    goto/16 :goto_0

    .line 189
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_7
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x3b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 190
    goto/16 :goto_0

    .line 185
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_8
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT_ARRAY:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "activity_filter"

    const/16 v3, 0x26

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0x27

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 187
    goto/16 :goto_0

    .line 179
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_9
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "retention_time"

    const/16 v3, 0x21

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 180
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "minimum_angle"

    const/16 v3, 0x22

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 181
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "maximum_angle"

    const/16 v3, 0x23

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 182
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "moving_thrs"

    const/16 v3, 0x24

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 183
    goto/16 :goto_0

    .line 172
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_a
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "stop_period"

    const/16 v3, 0x1c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 173
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "wait_period"

    const/16 v3, 0x1d

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 174
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "staying_radius"

    const/16 v3, 0x1e

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 175
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "area_radius"

    const/16 v3, 0x1f

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 176
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "lpp_resolution"

    const/16 v3, 0x20

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 177
    goto :goto_0

    .line 168
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_b
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "strength"

    const/16 v3, 0xe

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 169
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "duration"

    const/16 v3, 0xf

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 170
    goto :goto_0

    .line 165
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_c
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "device_type"

    const/16 v3, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 166
    goto :goto_0

    .line 162
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_d
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "step_count"

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 163
    goto :goto_0

    .line 152
    .end local v1    # "service":I
    .restart local p1    # "service":I
    :sswitch_e
    move v1, p1

    .end local p1    # "service":I
    .restart local v1    # "service":I
    const-string p1, "mode"

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 153
    .local p1, "mode":I
    if-nez p1, :cond_1

    .line 154
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "gender"

    const/4 v3, 0x6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 155
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "height"

    const/4 v3, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 156
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->DOUBLE:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "weight"

    const/4 v3, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 158
    sget-object v4, Lcom/samsung/android/hardware/context/util/DataType;->INT:Lcom/samsung/android/hardware/context/util/DataType;

    const-string v5, "exercise_mode"

    const/16 v3, 0x3e

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->setProperty(ILandroid/os/Bundle;ILcom/samsung/android/hardware/context/util/DataType;Ljava/lang/String;)V

    .line 267
    .end local p1    # "mode":I
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_e
        0x3 -> :sswitch_d
        0x6 -> :sswitch_c
        0xc -> :sswitch_b
        0x18 -> :sswitch_a
        0x1c -> :sswitch_9
        0x1e -> :sswitch_8
        0x21 -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x27 -> :sswitch_4
        0x2c -> :sswitch_3
        0x33 -> :sswitch_2
        0x35 -> :sswitch_1
        0x36 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 358
    const/4 v0, 0x0

    return v0
.end method
