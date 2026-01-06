.class Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;
.super Landroid/os/Handler;
.source "SemSatelliteListenerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatelliteListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;-><init>(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage - event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;)V

    .line 398
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mterrestrialNetworkAvailableChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Z)V

    return-void

    .line 415
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 416
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v1, v0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatelliteCapabilitiesChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;Ljava/lang/String;ZI)V

    return-void

    .line 411
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$mntnSignalStrengthChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V

    return-void

    .line 407
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatelliteModemStateChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;I)V

    return-void

    .line 400
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$msatellitePositionChangedTest(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;FF)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy$SatelliteListenerHandler;->this$0:Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/satellite/SemSatelliteListenerProxy;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
