.class Lcom/samsung/android/server/wifi/SemL4sController$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemL4sController;->registerContentObserver(Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemL4sController;

.field final synthetic val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemL4sController;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->val$facade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "sem_wifi_l4s_enabled"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const-string v0, "L4S toggle in Wi-Fi labs changed to: "

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$smlogi(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sHandler(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemL4sController$1;->this$0:Lcom/samsung/android/server/wifi/SemL4sController;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->-$$Nest$fgetmL4sHandler(Lcom/samsung/android/server/wifi/SemL4sController;)Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v1, 0x2

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
