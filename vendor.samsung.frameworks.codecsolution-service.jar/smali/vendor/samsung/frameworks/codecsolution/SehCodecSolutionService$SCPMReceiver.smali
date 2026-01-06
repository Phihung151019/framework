.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;


# direct methods
.method public constructor <init>(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$SCPMReceiver;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.samsung.android.scpm.policy.UPDATE.opus-offload-enable-list"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmContext(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.samsung.android.scpm.policy.UPDATE.opus-offload-enable-list"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "SehCodecSolutionService"

    .line 14
    .line 15
    const-string p2, "SCPM update broadcast received!"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$SCPMReceiver;->this$0:Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;

    .line 21
    .line 22
    invoke-static {p0}, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;->-$$Nest$fgetmHandler(Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const/16 p1, 0x3e8

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
