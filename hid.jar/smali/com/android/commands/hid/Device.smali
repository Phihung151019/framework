.class public Lcom/android/commands/hid/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/hid/Device$DeviceHandler;,
        Lcom/android/commands/hid/Device$DeviceCallback;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_DEVICE:I = 0x5

.field private static final MSG_OPEN_DEVICE:I = 0x1

.field private static final MSG_SEND_GET_FEATURE_REPORT_REPLY:I = 0x3

.field private static final MSG_SEND_REPORT:I = 0x2

.field private static final MSG_SEND_SET_REPORT_REPLY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HidDevice"

.field private static final UHID_EVENT_TYPE_SET_REPORT:B = 0xdt

.field private static final UHID_EVENT_TYPE_UHID_OUTPUT:B = 0x6t


# instance fields
.field private final mCond:Ljava/lang/Object;

.field private final mFeatureReports:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

.field private final mId:I

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mOutputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mResponseId:I

.field private final mThread:Landroid/os/HandlerThread;

.field private mTimeToSend:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCond(Lcom/android/commands/hid/Device;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatureReports(Lcom/android/commands/hid/Device;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Device;->mFeatureReports:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/hid/Device;)I
    .locals 0

    iget p0, p0, Lcom/android/commands/hid/Device;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputStream(Lcom/android/commands/hid/Device;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Device;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputs(Lcom/android/commands/hid/Device;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/commands/hid/Device;->mOutputs:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeToSend(Lcom/android/commands/hid/Device;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmResponseId(Lcom/android/commands/hid/Device;I)V
    .locals 0

    iput p1, p0, Lcom/android/commands/hid/Device;->mResponseId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeCloseDevice(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/commands/hid/Device;->nativeCloseDevice(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeOpenDevice(Ljava/lang/String;Ljava/lang/String;IIII[BLcom/android/commands/hid/Device$DeviceCallback;)J
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/commands/hid/Device;->nativeOpenDevice(Ljava/lang/String;Ljava/lang/String;IIII[BLcom/android/commands/hid/Device$DeviceCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeSendGetFeatureReportReply(JI[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/commands/hid/Device;->nativeSendGetFeatureReportReply(JI[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSendReport(J[B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/commands/hid/Device;->nativeSendReport(J[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeSendSetReportReply(JIZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/commands/hid/Device;->nativeSendSetReportReply(JIZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-string v0, "hidcommand_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III[B[BLandroid/util/SparseArray;Ljava/util/Map;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uniq"    # Ljava/lang/String;
    .param p4, "vid"    # I
    .param p5, "pid"    # I
    .param p6, "bus"    # I
    .param p7, "descriptor"    # [B
    .param p8, "report"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III[B[B",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;)V"
        }
    .end annotation

    .line 100
    .local p9, "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .local p10, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    .line 101
    iput p1, p0, Lcom/android/commands/hid/Device;->mId:I

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HidDeviceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    .line 103
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v0, Lcom/android/commands/hid/Device$DeviceHandler;

    iget-object v1, p0, Lcom/android/commands/hid/Device;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/commands/hid/Device$DeviceHandler;-><init>(Lcom/android/commands/hid/Device;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    .line 105
    iput-object p9, p0, Lcom/android/commands/hid/Device;->mFeatureReports:Landroid/util/SparseArray;

    .line 106
    iput-object p10, p0, Lcom/android/commands/hid/Device;->mOutputs:Ljava/util/Map;

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/android/commands/hid/Device;->mOutputStream:Ljava/io/OutputStream;

    .line 108
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 109
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 110
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 111
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 112
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 113
    if-eqz p2, :cond_0

    .line 114
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 118
    :goto_0
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 119
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 120
    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    .line 123
    return-void
.end method

.method private static native nativeCloseDevice(J)V
.end method

.method private static native nativeOpenDevice(Ljava/lang/String;Ljava/lang/String;IIII[BLcom/android/commands/hid/Device$DeviceCallback;)J
.end method

.method private static native nativeSendGetFeatureReportReply(JI[B)V
.end method

.method private static native nativeSendReport(J[B)V
.end method

.method private static native nativeSendSetReportReply(JIZ)V
.end method


# virtual methods
.method public addDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    .line 144
    return-void
.end method

.method public close()V
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    iget-object v2, p0, Lcom/android/commands/hid/Device;->mCond:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 152
    monitor-exit v1

    .line 154
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/android/commands/hid/Device;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/android/commands/hid/Device;
    :catch_0
    move-exception v1

    .line 155
    :goto_0
    return-void
.end method

.method public sendReport([B)V
    .locals 4
    .param p1, "report"    # [B

    .line 126
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 128
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    iget-wide v2, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 129
    return-void
.end method

.method public sendSetReportReply(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 136
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    iget v1, p0, Lcom/android/commands/hid/Device;->mResponseId:I

    .line 137
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/hid/Device;->mHandler:Lcom/android/commands/hid/Device$DeviceHandler;

    iget-wide v2, p0, Lcom/android/commands/hid/Device;->mTimeToSend:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 140
    return-void
.end method

.method public setGetReportResponse([B)V
    .locals 2
    .param p1, "report"    # [B

    .line 132
    iget-object v0, p0, Lcom/android/commands/hid/Device;->mFeatureReports:Landroid/util/SparseArray;

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    return-void
.end method
