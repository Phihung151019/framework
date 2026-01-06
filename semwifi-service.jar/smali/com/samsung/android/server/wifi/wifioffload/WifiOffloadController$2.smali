.class Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

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
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$2;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "airplane_mode_on"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p0, v0, :cond_0

    .line 22
    .line 23
    move v2, v0

    .line 24
    :cond_0
    iput-boolean v2, p1, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsAirplaneMode:Z

    .line 25
    .line 26
    return-void
.end method
