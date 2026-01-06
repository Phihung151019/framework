.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    const-string v1, "HH failure: "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$ActionListener;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
