.class Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
.super Landroid/telephony/TelephonyCallback;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTelephonyCallbackListener"
.end annotation


# instance fields
.field private callState:Z

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1958
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 1961
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 1965
    const-string v0, "Call state check"

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const-string v0, "/sys/class/sensors/proximity_sensor/check_far_state"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1982
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1984
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    .local v2, "out":Ljava/io/FileOutputStream;
    const/16 v0, 0x30

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 1986
    const-string v0, "Call is connected"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1987
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1989
    .end local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1984
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .end local p1    # "state":I
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1987
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .restart local p1    # "state":I
    :catch_0
    move-exception v0

    .line 1988
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "File not found!/sys/class/sensors/proximity_sensor/check_far_state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1991
    const-string v0, "OFFHOOK callStatetrue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    goto :goto_4

    .line 1994
    :pswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1995
    const-string v0, "RINGING callStatefalse"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    goto :goto_4

    .line 1968
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE callState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 1971
    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    if-eqz v3, :cond_0

    .line 1972
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1973
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v0, 0x31

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 1974
    const-string v0, "Call is disconnected: Send a far event"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1975
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1977
    .end local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1972
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_9
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .end local p1    # "state":I
    :goto_2
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1975
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;
    .restart local p1    # "state":I
    :catch_1
    move-exception v0

    .line 1976
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v3, "File write fail!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$CustomTelephonyCallbackListener;->callState:Z

    .line 1980
    nop

    .line 2000
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
