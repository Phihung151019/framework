.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNetworkUpdated()V
    .locals 2

    .line 1
    const-string v0, "AutoWifiController"

    .line 2
    .line 3
    const-string v1, "update networks"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 9
    .line 10
    const/16 v0, 0x6a

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
