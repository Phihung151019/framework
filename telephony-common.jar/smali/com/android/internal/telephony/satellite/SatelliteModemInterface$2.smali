.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;
.super Landroid/telephony/IIntegerConsumer$Stub;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->enableCellularModemWhileSatelliteModeIsOn(ZLandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

.field final synthetic blacklist val$message:Landroid/os/Message;


# direct methods
.method public static synthetic blacklist $r8$lambda$mRYVud4NImvUUkv9tb_u3dgTJtg(Landroid/os/Message;I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 725
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 714
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Landroid/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 4

    .line 717
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->fromSatelliteError(I)I

    move-result v0

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->satelliteResultToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 719
    const-string v2, "enableCellularModemWhileSatelliteModeIsOn"

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCellularModemWhileSatelliteModeIsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 723
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2;->val$message:Landroid/os/Message;

    new-instance p1, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/Message;I)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
