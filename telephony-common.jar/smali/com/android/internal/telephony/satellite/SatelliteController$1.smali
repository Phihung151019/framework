.class Lcom/android/internal/telephony/satellite/SatelliteController$1;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 751
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 754
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string p2, "Default SMS subscription changed"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mplogd(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 757
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$1;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const/16 p1, 0x2b

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$msendRequestAsync(Lcom/android/internal/telephony/satellite/SatelliteController;ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    :cond_0
    return-void
.end method
