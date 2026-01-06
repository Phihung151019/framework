.class Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;
.super Ljava/lang/Object;
.source "SemSatelliteInboundSmsHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 116
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged location time:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$fputmLastLocation(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Landroid/location/Location;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {v0}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$fgetmShouldSend(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$msendIOTstring(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Landroid/location/Location;)V

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;->-$$Nest$fputmShouldSend(Lcom/android/internal/telephony/SemSatelliteInboundSmsHandler;Z)V

    :cond_0
    return-void
.end method
