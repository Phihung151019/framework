.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConfiguredNetworksChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x10

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$000(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$4;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-wide/16 v0, 0x3e8

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
