.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerWifiApDataUsageCallback(Landroid/os/IBinder;Lcom/samsung/android/wifi/ISemWifiApDataUsageCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field final synthetic val$binder:Landroid/os/IBinder;

.field final synthetic val$callbackIdentifier:I


# direct methods
.method public static synthetic $r8$lambda$o949E36zw16Oz5zwOkmFBlD8qT0(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->lambda$binderDied$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;Landroid/os/IBinder;I)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->val$binder:Landroid/os/IBinder;

    .line 4
    .line 5
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->val$callbackIdentifier:I

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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmHotspotMobileDataLimit(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->removeDataUsageCallback(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->val$binder:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmSemWifiInjector(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;->val$callbackIdentifier:I

    .line 18
    .line 19
    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$4;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
