.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 338
    const/16 v0, -0x27

    packed-switch p1, :pswitch_data_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state is unknown (state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_0
    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-$$Nest$msendCallStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    .line 354
    goto :goto_0

    .line 345
    :pswitch_1
    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-$$Nest$msendCallStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    .line 348
    goto :goto_0

    .line 340
    :pswitch_2
    const-string v0, "CALL_STATE_IDLE"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;

    const/16 v1, -0x28

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;->-$$Nest$msendCallStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;I)V

    .line 343
    nop

    .line 360
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 407
    return-void
.end method
