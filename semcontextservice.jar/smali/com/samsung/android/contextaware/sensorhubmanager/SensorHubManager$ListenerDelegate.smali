.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSensorHubEventListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object p0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    .line 350
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmMainLooper(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/os/Looper;

    move-result-object v0

    .line 352
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 360
    return-void
.end method


# virtual methods
.method getListener()Ljava/lang/Object;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    return-object v0
.end method

.method onGetSensorHubDataLocked([BIJ)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "length"    # I
    .param p3, "timestamp"    # J

    .line 368
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmPool(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->getEvent(I)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    move-result-object v0

    .line 369
    .local v0, "t":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    const-string v1, "SensorHubManager"

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    if-nez v2, :cond_1

    .line 374
    const-string v2, " no buffer in event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void

    .line 380
    :cond_1
    const/4 v2, 0x0

    if-lez p2, :cond_3

    .line 381
    iget-object v3, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    array-length v3, v3

    if-ge v3, p2, :cond_2

    .line 382
    const-string v2, "failed get event, too big data "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 385
    :cond_2
    iput p2, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->length:I

    .line 388
    iget-object v1, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    .line 391
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 392
    iget-object v3, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;->buffer:[B

    aget-byte v4, p1, v1

    aput-byte v4, v3, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 405
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 406
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    return-void

    .line 370
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    const-string v2, "can\'t get an event form pool"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method
