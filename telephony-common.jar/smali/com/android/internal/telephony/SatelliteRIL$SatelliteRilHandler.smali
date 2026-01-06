.class public Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;
.super Landroid/os/Handler;
.source "SatelliteRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteRilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteRIL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 122
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: EVENT_AIDL_SERVICE_DEAD mSehRadioSatelliteProxyCookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteRIL;->-$$Nest$fgetmSehRadioSatelliteProxyCookie(Lcom/android/internal/telephony/SatelliteRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->riljLog(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteRIL$SatelliteRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteRIL;

    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteRIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SatelliteRIL;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
