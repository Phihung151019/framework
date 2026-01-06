.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    const-string v0, "User config. changed"

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$13;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
