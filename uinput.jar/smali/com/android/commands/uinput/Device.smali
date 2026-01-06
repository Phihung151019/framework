.class public Lcom/android/commands/uinput/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/Device$DeviceHandler;,
        Lcom/android/commands/uinput/Device$DeviceCallback;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_UINPUT_DEVICE:I = 0x2

.field private static final MSG_INJECT_EVENT:I = 0x3

.field private static final MSG_OPEN_UINPUT_DEVICE:I = 0x1

.field private static final MSG_SYNC_EVENT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UinputDevice"


# instance fields
.field private final mAbsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCond:Ljava/lang/Object;

.field private final mConfiguration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

.field private final mId:I

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mThread:Landroid/os/HandlerThread;

.field private mTimeToSendNanos:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mAbsInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mConfiguration:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/uinput/Device;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/uinput/Device;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mwriteOutputObject(Lcom/android/commands/uinput/Device;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Device;->writeOutputObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCloseUinputDevice(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/commands/uinput/Device;->nativeCloseUinputDevice(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeConfigure(II[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/commands/uinput/Device;->nativeConfigure(II[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeInjectEvent(JJIII)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/commands/uinput/Device;->nativeInjectEvent(JJIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputDevice(Ljava/lang/String;IIIIIILjava/lang/String;Lcom/android/commands/uinput/Device$DeviceCallback;)J
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/android/commands/uinput/Device;->nativeOpenUinputDevice(Ljava/lang/String;IIIIIILjava/lang/String;Lcom/android/commands/uinput/Device$DeviceCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeSetAbsInfo(IILandroid/os/Parcel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/commands/uinput/Device;->nativeSetAbsInfo(IILandroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "uinputcommand_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIILandroid/util/SparseArray;ILandroid/util/SparseArray;Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I
    .param p5, "versionId"    # I
    .param p6, "bus"    # I
    .param p8, "ffEffectsMax"    # I
    .param p10, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIII",
            "Landroid/util/SparseArray<",
            "[I>;I",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    .local p7, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p9, "absInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    .line 79
    iput p1, p0, Lcom/android/commands/uinput/Device;->mId:I

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UinputDeviceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/android/commands/uinput/Device$DeviceHandler;

    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/commands/uinput/Device$DeviceHandler;-><init>(Lcom/android/commands/uinput/Device;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    .line 83
    iput-object p7, p0, Lcom/android/commands/uinput/Device;->mConfiguration:Landroid/util/SparseArray;

    .line 84
    iput-object p9, p0, Lcom/android/commands/uinput/Device;->mAbsInfo:Landroid/util/SparseArray;

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mOutputStream:Ljava/io/OutputStream;

    .line 86
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 87
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 88
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 89
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 90
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 91
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 92
    iput p8, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 93
    const-string v1, ":"

    if-eqz p2, :cond_0

    .line 94
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 98
    :goto_0
    if-eqz p10, :cond_1

    .line 99
    iput-object p10, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uinput:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 104
    :goto_1
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 105
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device;->updateTimeBase()V

    .line 106
    return-void
.end method

.method static getEvdevEventCodeByLabel(ILjava/lang/String;)I
    .locals 4
    .param p0, "type"    # I
    .param p1, "label"    # Ljava/lang/String;

    .line 366
    invoke-static {p0, p1}, Lcom/android/commands/uinput/Device;->nativeGetEvdevEventCodeByLabel(ILjava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "code":I
    if-ltz v0, :cond_0

    .line 371
    return v0

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get evdev event code for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getEvdevEventTypeByLabel(Ljava/lang/String;)I
    .locals 4
    .param p0, "label"    # Ljava/lang/String;

    .line 357
    invoke-static {p0}, Lcom/android/commands/uinput/Device;->nativeGetEvdevEventTypeByLabel(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "type":I
    if-ltz v0, :cond_0

    .line 362
    return v0

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get evdev event type from label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getEvdevInputPropByLabel(Ljava/lang/String;)I
    .locals 4
    .param p0, "label"    # Ljava/lang/String;

    .line 376
    invoke-static {p0}, Lcom/android/commands/uinput/Device;->nativeGetEvdevInputPropByLabel(Ljava/lang/String;)I

    move-result v0

    .line 377
    .local v0, "prop":I
    if-ltz v0, :cond_0

    .line 381
    return v0

    .line 378
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get evdev input prop from label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getTimeToSendMillis()J
    .locals 6

    .line 116
    iget-wide v0, p0, Lcom/android/commands/uinput/Device;->mTimeToSendNanos:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/commands/uinput/Device;->mTimeToSendNanos:J

    rem-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static native nativeCloseUinputDevice(J)V
.end method

.method private static native nativeConfigure(II[I)V
.end method

.method private static native nativeGetEvdevEventCodeByLabel(ILjava/lang/String;)I
.end method

.method private static native nativeGetEvdevEventTypeByLabel(Ljava/lang/String;)I
.end method

.method private static native nativeGetEvdevInputPropByLabel(Ljava/lang/String;)I
.end method

.method private static native nativeInjectEvent(JJIII)V
.end method

.method private static native nativeOpenUinputDevice(Ljava/lang/String;IIIIIILjava/lang/String;Lcom/android/commands/uinput/Device$DeviceCallback;)J
.end method

.method private static native nativeSetAbsInfo(IILandroid/os/Parcel;)V
.end method

.method private writeOutputObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 350
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addDelayNanos(J)V
    .locals 2
    .param p1, "delayNanos"    # J

    .line 159
    iget-wide v0, p0, Lcom/android/commands/uinput/Device;->mTimeToSendNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/commands/uinput/Device;->mTimeToSendNanos:J

    .line 160
    return-void
.end method

.method public close()V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 179
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/commands/uinput/Device;->getTimeToSendMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 179
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/uinput/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 184
    monitor-exit v1

    .line 186
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/android/commands/uinput/Device;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/android/commands/uinput/Device;
    :catch_0
    move-exception v1

    .line 187
    :goto_0
    return-void
.end method

.method public injectEvent([IJ)V
    .locals 5
    .param p1, "events"    # [I
    .param p2, "offsetMicros"    # J

    .line 129
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 130
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 131
    iput-wide p2, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 133
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 134
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    invoke-direct {p0}, Lcom/android/commands/uinput/Device;->getTimeToSendMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/commands/uinput/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 135
    return-void
.end method

.method public syncEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "syncToken"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    .line 170
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/commands/uinput/Device;->getTimeToSendMillis()J

    move-result-wide v2

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/commands/uinput/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 171
    return-void
.end method

.method public updateTimeBase()V
    .locals 2

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/commands/uinput/Device;->mTimeToSendNanos:J

    .line 142
    return-void
.end method
