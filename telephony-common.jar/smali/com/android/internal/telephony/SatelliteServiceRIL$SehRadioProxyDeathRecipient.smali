.class final Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioProxyDeathRecipient;
.super Ljava/lang/Object;
.source "SatelliteServiceRIL.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SehRadioProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;


# virtual methods
.method public whitelist serviceDied(J)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    const-string v1, "serviceDied"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SatelliteServiceRIL;->riljLog(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL$SehRadioProxyDeathRecipient;->this$0:Lcom/android/internal/telephony/SatelliteServiceRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceRIL;->mRilHandler:Lcom/android/internal/telephony/SatelliteServiceRIL$SatelliteServiceRilHandler;

    .line 108
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
