.class final Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SDHMSReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "SDHMSReceiver, "


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1440
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1446
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 1447
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.sdhms.action.INIT_COMPLETED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1448
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 1449
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$misMlPidModel(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->-$$Nest$mclearPackageData(Lcom/samsung/android/game/GameManagerService;)V

    .line 1456
    const-string v0, "GameManager"

    const-string v1, "SDHMSReceiver, onReceive(), the user\'s data was reset by disabling GOS"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    :cond_0
    return-void
.end method
