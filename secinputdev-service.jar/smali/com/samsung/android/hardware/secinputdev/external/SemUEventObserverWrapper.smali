.class public Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "SemUEventObserverWrapper.java"


# static fields
.field private static final GESTURE_DONE:I = 0x1

.field private static final GESTURE_ERROR:I = 0x2

.field private static final GESTURE_NOTHING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemInput:UEvent"


# instance fields
.field private inputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

.field private final ueventObserver:Landroid/os/SemUEventObserver;


# direct methods
.method static bridge synthetic -$$Nest$mprocessGestureEvent(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;Landroid/os/SemUEventObserver$SemUEvent;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->processGestureEvent(Landroid/os/SemUEventObserver$SemUEvent;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 72
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->ueventObserver:Landroid/os/SemUEventObserver;

    .line 22
    return-void
.end method

.method private processGestureEvent(Landroid/os/SemUEventObserver$SemUEvent;)I
    .locals 12
    .param p1, "event"    # Landroid/os/SemUEventObserver$SemUEvent;

    .line 40
    const-string v0, "SemInput:UEvent"

    const-string v1, ","

    const-string v2, "GESTURE"

    invoke-virtual {p1, v2}, Landroid/os/SemUEventObserver$SemUEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "gesture":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 43
    return v3

    .line 45
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isBlank()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    const-string v5, "POS"

    invoke-virtual {p1, v5}, Landroid/os/SemUEventObserver$SemUEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "pos":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 51
    return v4

    .line 53
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isBlank()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "xy":[Ljava/lang/String;
    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 59
    .local v3, "x":I
    const/4 v7, 0x1

    aget-object v8, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 60
    .local v8, "y":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 61
    .local v9, "type":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!@[sec_input] gesture event type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->inputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    if-eqz v1, :cond_4

    .line 63
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->inputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    int-to-float v10, v3

    int-to-float v11, v8

    invoke-virtual {v1, v9, v10, v11}, Landroid/hardware/input/InputManagerGlobal;->notifyQuickAccess(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v3    # "x":I
    .end local v5    # "pos":Ljava/lang/String;
    .end local v6    # "xy":[Ljava/lang/String;
    .end local v8    # "y":I
    .end local v9    # "type":I
    :cond_4
    nop

    .line 69
    return v7

    .line 54
    .restart local v5    # "pos":Ljava/lang/String;
    :cond_5
    :goto_0
    return v4

    .line 46
    .end local v5    # "pos":Ljava/lang/String;
    :cond_6
    :goto_1
    return v4

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "gesture uevent"

    invoke-static {v0, v3, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    return v4
.end method


# virtual methods
.method public register()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->ueventObserver:Landroid/os/SemUEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/tsp"

    invoke-virtual {v0, v1}, Landroid/os/SemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->ueventObserver:Landroid/os/SemUEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/sec_epen"

    invoke-virtual {v0, v1}, Landroid/os/SemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->ueventObserver:Landroid/os/SemUEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/sec/digital_hall"

    invoke-virtual {v0, v1}, Landroid/os/SemUEventObserver;->startObserving(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->inputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemUEventObserverWrapper;->inputManagerGlobal:Landroid/hardware/input/InputManagerGlobal;

    const-string v1, "SemInput:UEvent"

    if-nez v0, :cond_0

    .line 32
    const-string v0, "can not get InputManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "get InputManagerGlobal"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_0
    const-string v0, ""

    return-object v0
.end method
