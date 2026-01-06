.class Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$2;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$2;->this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver$2;->this$0:Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;->-$$Nest$mupdateCarrierWifiOffload(Lcom/samsung/android/server/wifi/util/WifiAutojoinSettingsObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
