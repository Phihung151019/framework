.class Lcom/android/internal/telephony/SemSimErrorMonitor$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemSimErrorMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemSimErrorMonitor;->registerDefaultNetworkCb(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemSimErrorMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internet Network available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result p1

    const-string v0, "ril.usimAuth.status"

    const-string v1, "OK"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-static {p1}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$fgetmErrSimSlot(Lcom/android/internal/telephony/SemSimErrorMonitor;)I

    move-result p1

    const-string v0, "ril.sim.dignosis.status"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const-string v0, "onAvailable: removeSIMErrorNotification, authSimtype is 2"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mlog(Lcom/android/internal/telephony/SemSimErrorMonitor;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/android/internal/telephony/SemSimErrorMonitor$2;->this$0:Lcom/android/internal/telephony/SemSimErrorMonitor;

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SemSimErrorMonitor;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/SemSimErrorMonitor;ZI)V

    return-void
.end method
