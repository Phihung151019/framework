.class final Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaPowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    .line 187
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    .local v0, "timeStamp":J
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_0

    .line 197
    const-string v2, "context is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_1

    .line 200
    const-string v2, "intent is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1007

    const-string v4, "SCREEN_ON"

    const-string v5, "AP_WAKEUP"

    const/16 v6, -0x2f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_3

    .line 202
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 203
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v6, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v6}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 214
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 216
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 217
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto/16 :goto_0

    .line 223
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1008

    const-string v9, "AP_SLEEP"

    const/16 v10, -0x2e

    if-ne v2, v3, :cond_5

    .line 224
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 225
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 226
    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v10, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 229
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 236
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 237
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 239
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 240
    const-string v2, "SCREEN_OFF"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto/16 :goto_0

    .line 246
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x100b

    if-ne v2, v3, :cond_7

    .line 247
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 248
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 249
    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v10, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 252
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 259
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 262
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 263
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto/16 :goto_0

    .line 269
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1009

    if-ne v2, v3, :cond_9

    .line 270
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOffIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 271
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOnIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 272
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0xf

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 273
    const-string v2, "SCREEN_ON_INTENT"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOnIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 280
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 281
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 282
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v6, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 284
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v6}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 285
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto/16 :goto_0

    .line 291
    :cond_9
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x100a

    if-ne v2, v3, :cond_b

    .line 292
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOnIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 293
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOffIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 294
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0xe

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 295
    const-string v2, "SCREEN_OFF_INTENT"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOffIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 302
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 303
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 304
    invoke-static {v9}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v10, v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 306
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v10}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 307
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    .line 308
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto :goto_0

    .line 313
    :cond_b
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_c

    .line 315
    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    .line 317
    :cond_c
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_d

    .line 319
    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    .line 321
    :cond_d
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x100c

    if-ne v2, v3, :cond_e

    .line 322
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOffProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 323
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOnProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 324
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0xd

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 325
    const-string v2, "SCREEN_ON_PROXIMITY_INTENT"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOnProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    goto :goto_0

    .line 328
    :cond_e
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x100d

    if-ne v2, v3, :cond_f

    .line 329
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v7}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOnProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 330
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetisScreenOffProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 331
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0xc

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V

    .line 332
    const-string v2, "SCREEN_OFF_PROXIMITY_INTENT"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v2, v8}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fputisScreenOffProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V

    .line 336
    :cond_f
    :goto_0
    return-void
.end method
