.class Lcom/android/server/ssrm/CustomFrequencyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 641
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitScrollBooster(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 642
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$minitPerfettoLogging(Lcom/android/server/ssrm/CustomFrequencyManagerService;Landroid/content/Context;)V

    .line 643
    new-instance v1, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    sget-object v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 644
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 645
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 647
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 648
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 651
    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 652
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_2

    .line 649
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 650
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    goto :goto_2

    .line 646
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$2;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iput-boolean v2, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 654
    :cond_5
    :goto_2
    return-void
.end method
