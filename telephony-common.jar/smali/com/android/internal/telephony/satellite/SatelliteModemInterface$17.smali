.class Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;
.super Landroid/telephony/IIntegerConsumer$Stub;
.source "SatelliteModemInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestTimeForNextSatelliteVisibility(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

.field final synthetic blacklist val$message:Landroid/os/Message;


# direct methods
.method public static synthetic blacklist $r8$lambda$Y4ORmnzoe8xIpoXin6Tv-Hsn8DA(Landroid/os/Message;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 1237
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendMessageWithResult(Landroid/os/Message;Ljava/lang/Object;I)V

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

    .line 1226
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Landroid/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestTimeForNextSatelliteVisibility"

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$msLogFrom(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    filled-new-array {p1}, [I

    move-result-object p1

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;->this$0:Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestTimeForNextSatelliteVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1235
    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteModemInterface;Ljava/lang/String;)V

    .line 1237
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17;->val$message:Landroid/os/Message;

    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface$17$$ExternalSyntheticLambda0;-><init>(Landroid/os/Message;[I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
