.class Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SarDevice"
.end annotation


# static fields
.field private static final MAX_SENSORS:I = 0x3


# instance fields
.field private final MAX_CHANNEL:I

.field protected mNumSensors:I

.field protected mSarTypes:[J

.field protected mStates:[I

.field protected mUnknownModes:[I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevice"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[J)V

    .line 171
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;JJ)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevice"    # J
    .param p4, "sarDevice2nd"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    const/4 v1, 0x1

    aput-wide p4, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[J)V

    .line 175
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;[J)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "sarDevices"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    .line 160
    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    .line 164
    array-length v1, p2

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    .line 165
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    .line 166
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    .line 167
    return-void
.end method


# virtual methods
.method addSensor()V
    .locals 1

    .line 184
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    .line 185
    return-void
.end method

.method clear(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "index"    # I

    .line 222
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    aget v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] CLEAR SarDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    not-int v2, v2

    and-int/2addr v1, v2

    aput v1, v0, p1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v2, v2, p1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 231
    :cond_2
    return-void
.end method

.method getDevice(I)J
    .locals 2
    .param p1, "channel"    # I

    .line 178
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-ge p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 180
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getSensorCnt()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mNumSensors:I

    return v0
.end method

.method set(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "index"    # I

    .line 212
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v2, v2, p1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v2, v2, p1

    shl-int/2addr v1, p2

    or-int/2addr v1, v2

    aput v1, v0, p1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] SET SarDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    return-void
.end method

.method tunerGrip(JZ)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "state"    # Z

    .line 208
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 209
    return-void
.end method

.method unknownMode(II)V
    .locals 7
    .param p1, "channel"    # I
    .param p2, "state"    # I

    .line 192
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->MAX_CHANNEL:I

    if-ge p1, v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mUnknownModes:[I

    aput p2, v0, p1

    .line 195
    const/16 v0, 0x12c

    const-string v1, " , state : "

    const-string v2, " channel : "

    const-string v3, "MotionRecognitionService"

    if-ne p2, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v4, v4, p1

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAR] SET UnknownMode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v4, v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v4, v4, p1

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SAR] CLEAR UnknownMode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mSarTypes:[J

    aget-wide v4, v4, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->mStates:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    :goto_0
    return-void
.end method
