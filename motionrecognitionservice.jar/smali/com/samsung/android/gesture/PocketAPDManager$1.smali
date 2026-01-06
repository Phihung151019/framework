.class Lcom/samsung/android/gesture/PocketAPDManager$1;
.super Lcom/samsung/android/hardware/secinputdev/ISemInputMotionCallback$Stub;
.source "PocketAPDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketAPDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketAPDManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketAPDManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketAPDManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputMotionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventChanged(I)V
    .locals 6
    .param p1, "result"    # I

    .line 234
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APD] Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lux : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$fgetmlux(Lcom/samsung/android/gesture/PocketAPDManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/PocketAPDManager;->setAPDEventData(I)V

    .line 236
    const-wide/16 v0, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$fgetmAPDFeatureLevel(Lcom/samsung/android/gesture/PocketAPDManager;)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 238
    sget-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v2, :cond_0

    .line 239
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[APD] SHOW_POPUP Request by APD"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[APD] already displayed PopUp."

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    or-int/2addr v0, v3

    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 246
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketAPDManager;->setStartTimeEachMode(JI)V

    goto :goto_2

    .line 250
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$fgetmAPDFeatureLevel(Lcom/samsung/android/gesture/PocketAPDManager;)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 251
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    .line 252
    sget-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-ne v2, v4, :cond_2

    .line 253
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[APD] REMOVE_POPUP Request by APD"

    invoke-static {v2, v4}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v0, v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_1

    .line 257
    :cond_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[APD] already removed PopUp"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APD] displayed PopUp by Pocket : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensorPocketInState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_1
    sget v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    and-int/lit8 v0, v0, -0x3

    sput v0, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    .line 264
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$1;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 267
    :cond_4
    :goto_2
    return-void
.end method
