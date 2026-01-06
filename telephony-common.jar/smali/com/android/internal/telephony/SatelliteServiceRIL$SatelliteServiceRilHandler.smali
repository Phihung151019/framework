.class public Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;
.super Landroid/os/Handler;
.source "SatelliteServiceRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SatelliteServiceRilHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteServiceRIL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 170
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: EVENT_AIDL_SERVICE_DEAD mSehRadioSatelliteProxyCookie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    invoke-static {v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->-$$Nest$fgetmSehRadioSatelliteServiceProxyCookie(Lcom/android/internal/telephony/SatelliteServiceRIL;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    const-string p1, "EVENT_AIDL_SERVICE_DEAD"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SatelliteServiceRIL;->-$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/SatelliteServiceRIL;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
