.class Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/abtest/AbTestManager;->registerForSettingsChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Landroid/os/Handler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

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
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Settings.Global.SEM_WIFI_ABTEST_USER_ACTIVATION: "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "sem_wifi_abtest_user_activation"

    .line 25
    .line 26
    const/4 v3, -0x1

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "AbTestManager"

    .line 39
    .line 40
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$2;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmAbTestMessageHandler(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestMessageHandler;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const/4 p1, 0x3

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method
