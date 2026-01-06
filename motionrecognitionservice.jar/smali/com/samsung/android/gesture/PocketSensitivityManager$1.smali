.class Lcom/samsung/android/gesture/PocketSensitivityManager$1;
.super Ljava/lang/Object;
.source "PocketSensitivityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketSensitivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketSensitivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketSensitivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 235
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    new-instance v1, Lcom/samsung/android/gesture/VirtualPocketPosData;

    invoke-direct {v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fputvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;Lcom/samsung/android/gesture/VirtualPocketPosData;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setState(I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setposState(I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setposCase(I)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x3

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setpedoState(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x4

    aget v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setpedoCase(I)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x5

    aget v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/VirtualPocketPosData;->setversion(I)V

    .line 211
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POCKET POSSENSOR : state "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " posState "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposState()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " posCase "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposCase()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " pedoState "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoState()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " pedoCase "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoCase()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " version "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getversion()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setPocketPosSensorReceived(Z)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$fgetvpPosData(Lcom/samsung/android/gesture/PocketSensitivityManager;)Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v0

    const-wide/16 v6, 0x0

    if-ne v0, v2, :cond_3

    .line 216
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v3, :cond_0

    .line 217
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 218
    :cond_0
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v4, :cond_2

    .line 219
    :cond_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 220
    :cond_2
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v5, :cond_7

    .line 221
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->enableDualFlipMode()V

    goto :goto_0

    .line 223
    :cond_3
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v3, :cond_4

    .line 224
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 225
    :cond_4
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-eq v0, v2, :cond_5

    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v4, :cond_6

    .line 226
    :cond_5
    invoke-static {}, Lcom/samsung/android/gesture/PocketSensitivityManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 227
    :cond_6
    sget v0, Lcom/samsung/android/gesture/PocketSensitivityManager;->mSensitivityFeatureLevel:I

    if-ne v0, v5, :cond_7

    .line 228
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketSensitivityManager$1;->this$0:Lcom/samsung/android/gesture/PocketSensitivityManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    .line 232
    :cond_7
    :goto_0
    return-void
.end method
