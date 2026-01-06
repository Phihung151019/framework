.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->registerClientDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApClientUpdateCallback;ILjava/lang/String;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientListManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$callbackIdentifier:I


# direct methods
.method public static synthetic $r8$lambda$7WiE3iK-iTnKvF9Oox6IduhFXvI(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->lambda$binderDied$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;Landroid/os/IBinder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->val$binder:Landroid/os/IBinder;

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->val$callbackIdentifier:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$binderDied$0(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager;->unregisterClientDataUsageCallback(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->val$binder:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;->val$callbackIdentifier:I

    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageCallBackManager$2;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
