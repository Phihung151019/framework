.class Lcom/samsung/android/gesture/PocketModeEvent$3;
.super Ljava/lang/Object;
.source "PocketModeEvent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1087
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1123
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1091
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmLux(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1094
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ge v0, v1, :cond_4

    .line 1095
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    or-int/2addr v0, v3

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1096
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetlightReCheckCnt(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 1100
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketLogManager;->getIsDumpWrite()I

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/gesture/PocketDumpRecogInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v5

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v1

    add-int/lit16 v7, v1, 0x3e8

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLux(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuminance(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v10

    sget v11, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/gesture/PocketDumpRecogInfo;-><init>(JIIIII)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 1102
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 1104
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketIn()V

    .line 1106
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxState()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 1107
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v3, :cond_3

    .line 1108
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    goto :goto_0

    .line 1114
    :cond_4
    sget v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    and-int/lit8 v0, v0, -0x2

    sput v0, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    .line 1115
    sget-boolean v0, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v0, v3, :cond_5

    .line 1116
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketModeEvent$3;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 1120
    :cond_6
    :goto_0
    return-void
.end method
